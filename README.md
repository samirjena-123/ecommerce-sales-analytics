# E-Commerce Sales Analytics Dashboard

End-to-end Business Intelligence project using SQL, Python, MySQL, and Power BI on the Olist Brazilian E-Commerce dataset.


![Python](https://img.shields.io/badge/Python-3.12-blue)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Analysis-green)
![NumPy](https://img.shields.io/badge/NumPy-Numerical-purple)
![MySQL](https://img.shields.io/badge/MySQL-Database-orange)
![SQL](https://img.shields.io/badge/SQL-Analytics-red)
![Power BI](https://img.shields.io/badge/PowerBI-Dashboard-yellow)
![Git](https://img.shields.io/badge/Git-Version%20Control-lightgrey)

## Overview

This project is an end-to-end Business Intelligence and Data Analytics solution built using the Brazilian Olist E-Commerce dataset. The objective is to transform raw transactional data into actionable business insights through SQL analysis, Python-based data processing, and interactive Power BI dashboards.

The project demonstrates the complete analytics workflow:

* Data Collection
* Data Cleaning & Transformation
* SQL-Based Business Analysis
* KPI Generation
* Dashboard Development
* Business Insight Visualization


# Dashboard Preview

### Executive Overview
![Executive Overview](dashboard/overview_dashboard.png)

### Product Performance Analysis
![Product Performance](dashboard/product_analysis_dashboard.png)

### State Performance Dashboard
![State Performance](dashboard/state_performance_dashboard.png)

### Customer Insights Dashboard
![Customer Insights](dashboard/customer_insights_dashboard.png)

### Order & Delivery Analysis
![Order Delivery Analysis](dashboard/order_delivery_dashboard.png)

---


## Business Problem

E-commerce companies generate large volumes of transactional data. Extracting meaningful insights from this data is essential for:

* Revenue tracking
* Customer behavior analysis
* Product performance evaluation
* Payment method optimization
* Delivery performance monitoring

This project addresses these challenges through a multi-page Power BI dashboard.

---

## Dataset

**Source:** Olist Brazilian E-Commerce Public Dataset

The dataset contains information about:

* Customers
* Orders
* Products
* Payments
* Reviews
* Sellers
* Geolocation

---

## Technology Stack

### Data Processing

* Python
* Pandas
* NumPy

### Database

* MySQL
* SQLAlchemy

### Visualization

* Power BI

### Additional Libraries

* Folium
* Prophet

---

## Project Structure

```text
PROJECT3/
│
├── dashboard/
│   ├── ecommerce_dashboard.pbix
│   ├── overview_dashboard.png
│   ├── product_analysis_dashboard.png
│   ├── state_performance_dashboard.png
│   ├── customer_insights_dashboard.png
│   └── order_delivery_dashboard.png
│
├── data/
│   ├── raw/
│   └── processed/
│
├── notebooks/
│   ├── 01_eda.ipynb
│   └── 02_powerbi_exports.ipynb
│
├── reports/
│   └── figures/
│
├── sql/
│   ├── 01_monthly_revenue.sql
│   ├── 02_top_categories.sql
│   ├── 03_delivery_by_state.sql
│   ├── 04_late_deliveries.sql
│   ├── 05_seller_performance.sql
│   ├── 06_payment_methods.sql
│   ├── 07_review_scores.sql
│   ├── 08_hourly_orders.sql
│   ├── 09_revenue_by_state.sql
│   └── 10_repeat_customers.sql
│
└── src/
    └── load_to_mysql.py
```

---

## Dashboard Pages

### 1. Executive Overview

Key Metrics:

* Total Revenue
* Total Orders
* Total Customers
* Average Order Value

Visuals:

* Monthly Revenue Trend
* Revenue by Payment Method

### 2. Product Performance Analysis

Visuals:

* Top 10 Product Categories by Revenue
* Revenue Share by Category
* Category Revenue Summary

### 3. State Performance Dashboard

Visuals:

* States with Longest Delivery Times
* Top States by Revenue

KPIs:

* Highest Revenue State
* Average Revenue per State
* Fastest Delivery State

### 4. Customer Insights Dashboard

Visuals:

* Top States by Customer Count
* Top Cities by Customer Count
* Revenue per Customer by State
* Customer Performance Summary

### 5. Order & Delivery Analysis

Visuals:

* Order Status Distribution
* Monthly Order Trend
* Delivery Performance by State
* Average Order Value by Payment Method
* Order Status Trend by Year

---

## Key Insights

* Credit Card payments generate the majority of revenue.
* São Paulo contributes the highest revenue among all states.
* Health & Beauty is the highest-performing product category.
* Delivery performance varies significantly across states.
* Customer concentration is heavily skewed toward major Brazilian cities.

---

## Project Outcome

Built a 5-page interactive Power BI dashboard that analyzes:

- Revenue performance
- Product category trends
- State-wise sales distribution
- Customer behavior
- Order and delivery performance

The dashboard enables business users to identify revenue drivers, customer concentration, payment preferences, and logistics bottlenecks.

---

## Skills Demonstrated

* Data Cleaning
* Exploratory Data Analysis
* SQL Query Development
* KPI Design
* Data Modeling
* Dashboard Development
* Business Intelligence
* Data Visualization
* Power BI Reporting

---


## Author

Samira Jena

Information Technology Student at VSSUT Burla

Interests:
- Data Analytics
- Business Intelligence
- Machine Learning
- Data Visualization
