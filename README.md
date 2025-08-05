# 📊 Sales Ad-hoc Analysis – AtliQ Hardware

### 🏢 Company Background

**AtliQ Hardware** is a B2B company that began operations in **2008**, selling computer hardware and peripherals. Their customer base includes both **brick-and-mortar stores** (like Croma, Staples) and **e-commerce platforms** (like Flipkart).

---

### ❌ The Problem

In **2018**, AtliQ Hardware faced a major setback when their critical Excel-based business planning file **crashed beyond recovery** due to:

* Excessively large volumes of data
* Excel’s limitations for handling such scale

As a result, the management team lost visibility into:

* Sales trends
* Forecasting accuracy
* Customer and market performance

---

### ✅ The Solution

AtliQ Hardware hired a data team to:

* Migrate all critical sales and planning data into a **SQL database**
* Replace fragile Excel sheets with **robust SQL-based analysis**
* Generate reliable business insights and reports

---

### 🎯 Project Objective

To design and execute SQL-based reports that:

* Analyze historical sales performance
* Identify top markets, products, and customers
* Compare actual vs forecasted sales
* Replace manual Excel efforts with automated queries

---

### 🗃️ Dataset

The dataset simulates AtliQ’s sales and forecasting data using structured tables such as:
* `fact_sales_monthly`  <br>
   <img width="399" height="113" alt="Screenshot 2025-08-05 at 12 50 29 PM" src="https://github.com/user-attachments/assets/60815d79-1b65-4b59-964a-cf5871a3be06" />
  
* `dim_customer` <br>
  <img width="391" height="138" alt="Screenshot 2025-08-05 at 12 45 57 PM" src="https://github.com/user-attachments/assets/4f520b86-35ae-482c-9d24-117f887a7b6d" />
  
* `dim_product` <br>
  <img width="626" height="113" alt="Screenshot 2025-08-05 at 12 46 39 PM" src="https://github.com/user-attachments/assets/1a9ceff4-3c49-417d-8f3d-3c7e27ad94e9" />
  
* `fact_forecast_monthly` <br>
  <img width="429" height="113" alt="Screenshot 2025-08-05 at 12 47 20 PM" src="https://github.com/user-attachments/assets/fb32f923-335a-464a-b812-1808305354b4" />
  
* `fact_freight_cost` <br>
  <img width="383" height="113" alt="Screenshot 2025-08-05 at 12 47 55 PM" src="https://github.com/user-attachments/assets/ef647356-a3ce-4260-8b48-c96f64bc25ef" />

* `fact_gross_price` <br>
  <img width="271" height="113" alt="Screenshot 2025-08-05 at 12 48 28 PM" src="https://github.com/user-attachments/assets/b9636892-c5fe-4002-bcdc-5ca7696eaa2c" />

* `fact_manufacturing_cost` <br>
  <img width="329" height="113" alt="Screenshot 2025-08-05 at 12 48 59 PM" src="https://github.com/user-attachments/assets/3710ae0b-716f-4d5d-863c-224e1d7c4d4c" />

* `fact_post_invoice_deductions` <br>
  <img width="516" height="113" alt="Screenshot 2025-08-05 at 12 49 35 PM" src="https://github.com/user-attachments/assets/f7766660-6dce-4c01-88a7-73b36e530373" />

* `fact_pre_invoice_deductions` <br>
  <img width="362" height="113" alt="Screenshot 2025-08-05 at 12 50 06 PM" src="https://github.com/user-attachments/assets/0712fcff-6375-4a2e-9549-ff4b6741b580" />


---

### 📌 Reports Created

| Report Name                             | Description                                                                 |
| ---------------------------------       | --------------------------------------------------------------------------- |
| Customer Sales detail with gross price  | detailed sales report for customer 90002002                                 |
| Total Gross Sales by Customer           | monthly gross sales report for Croma India, all years                       |
| Market Badge Report                     | Assigned badge (Gold/Silver) to markets based on total quantity sold        |
| Top Market, Product, and Customer       | Best performing entities by net sales                                       |
| Forecast Accuracy Report                | Comparison of forecasted vs actual sales, with accuracy %                   |

---

### 🛠️ Tools Used

* **SQL** (PostgreSQL / MySQL)
* **Excel – for validation or light data formatting

---

### 📈 Sample Insights 

> 🥇 **Flipkart** emerged as the top customer by net sales in FY2021
> 🥉 **West India** market earned a Bronze badge based on volume sold
> 📉 Forecasting accuracy dropped in Q3, highlighting a need for better modeling

---

### 🚀 Outcome

* Excel dependency eliminated
* Data is now **queryable, scalable, and structured**
* Decision-makers get timely, reliable business reports

---

### 📂 Folder Structure (example)

```
📁 atliq-sales-analysis
├── 📁 sql_queries
│   ├── gross_sales_by_product.sql
│   ├── forecast_accuracy.sql
│   └── ...
├── 📁 data_dictionary
│   └── schema_overview.md
├── 📁 reports
│   └── sales_summary.xlsx
└── README.md
```

