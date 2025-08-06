-- Generate report of sales forecasts for each customer in any given year.


-- To UPDATE or DELETE a statement
SET SQL_SAFE_UPDATES = 0;

-- Created Helper Table fact_act_est to get all the data from different tables
DROP TABLE IF EXISTS fact_act_est;

CREATE TABLE fact_act_est AS
(
    SELECT 
        s.date AS date,
        s.fiscal_year AS fiscal_year,
        s.product_code AS product_code,
        s.customer_code AS customer_code,
        s.sold_quantity AS sold_quantity,
        f.forecast_quantity AS forecast_quantity
    FROM 
        fact_sales_monthly s
    LEFT JOIN fact_forecast_monthly f 
        USING (date, customer_code, product_code)
)
UNION
(
    SELECT 
        f.date AS date,
        f.fiscal_year AS fiscal_year,
        f.product_code AS product_code,
        f.customer_code AS customer_code,
        s.sold_quantity AS sold_quantity,
        f.forecast_quantity AS forecast_quantity
    FROM 
        fact_forecast_monthly f
    LEFT JOIN fact_sales_monthly s 
        USING (date, customer_code, product_code)
);

UPDATE fact_act_est
SET sold_quantity = 0
WHERE sold_quantity IS NULL;

UPDATE fact_act_est
SET forecast_quantity = 0
WHERE forecast_quantity IS NULL;


-- Created stored prcoedure so we can create report for any year
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_forecast_accuracy`(
    IN in_fiscal_year INT
)
BEGIN
    WITH forecast_err_table AS (
        SELECT
            s.customer_code AS customer_code,
            c.customer AS customer_name,
            c.market AS market,
            SUM(s.sold_quantity) AS total_sold_qty,
            SUM(s.forecast_quantity) AS total_forecast_qty,
            SUM(CAST(s.forecast_quantity AS SIGNED) - CAST(s.sold_quantity AS SIGNED)) AS net_error,
            ROUND(
                SUM(CAST(s.forecast_quantity AS SIGNED) - CAST(s.sold_quantity AS SIGNED)) * 100 /
                NULLIF(SUM(s.forecast_quantity), 0), 1
            ) AS net_error_pct,
            SUM(ABS(CAST(s.forecast_quantity AS SIGNED) - CAST(s.sold_quantity AS SIGNED))) AS abs_error,
            ROUND(
                SUM(ABS(CAST(s.forecast_quantity AS SIGNED) - CAST(s.sold_quantity AS SIGNED))) * 100 /
                NULLIF(SUM(s.forecast_quantity), 0), 2
            ) AS abs_error_pct
        FROM fact_act_est s
        JOIN dim_customer c
            ON s.customer_code = c.customer_code
        WHERE s.fiscal_year = in_fiscal_year
        GROUP BY s.customer_code, c.customer, c.market
    )
    SELECT 
        *,
        IF(abs_error_pct > 100, 0, 100.0 - abs_error_pct) AS forecast_accuracy
    FROM forecast_err_table
    ORDER BY forecast_accuracy DESC;
END

