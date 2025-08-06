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

