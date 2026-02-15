# E-Commerce_Sales_Insights
Examining e-commerce sales data to uncover key performance trends, customer behavior, and revenue patterns and provide actionable insights using Excel, Python, and SQL.
## Table of Contents
- [Overview](#overview)
- [Problem Statement](#problem-statement)
- [Dataset Details](#dataset-details)
- [Tools & Technologies](#tools--technologies)
- [Project Structure](#project-structure)
- [Methodology](#methodology)
- [Dashboard](#dashboard)
- [Key Insights](#key-insights)
- [Suggestions](#suggestions)
- [How to Run This Project](#how-to-run-this-project)
- [Author & Contact](#author--contact)


---

## Overview
This project provides a data-driven analysis of e-commerce sales performance, transforming raw transactional data into a comprehensive business intelligence solution. It leverages Python ford data cleaning and KPI computation, SQL for sales performance analysis, and Excel for dashboard visualization. The interactive dashboards enable multi-dimensional exploration of sales metrics such as revenue, order trends, product performance, customer demographics, and regional insights. This project demonstrates a scalable framework for converting raw sales data into actionable insights that support data-driven decision-making and strategic business growth.

## Problem Statement
 Due to the lack of clear understanding of regional, temporal, and demographic customer purchase patterns, the e-commerce marketplace seller was struggling to align supply with actual demand across locations and time periods. This led to inefficient inventory distribution, ineffective marketing spend, inconsistent customer targeting, and unreliable sales forecasting. As a result, the company faced missed revenue opportunities, higher operational costs, and reduced strategic clarity in scaling high-performing markets.

The objective of this project was to analyze customer purchase behavior across key segments—age groups, gender, months, regions, and sales channels—to uncover demand patterns and performance drivers. 

The analysis aimed to generate data-driven insights to optimize inventory planning, refine marketing focus, enhance delivery efficiency, and ultimately support sustainable revenue growth and informed business decision-making.

## Dataset Details
- Dataset Source: Public Dataset (Kaggle/GitHub) 
- Dataset Name: Ecommerce Sales Performance 
- Raw Data Size: 31048 Rows and 19 Columns 
- Cleaned Data Size: 31048 Rows and 15 Columns


## Tools & Technologies
-  Excel: Dashboards, Power Query, Power Pivot, Pivot Charts, Slicers. 
- SQL: COUNT, GROUP BY, ORDER BY, Subqueries for data extraction and aggregation. 
- Python (Jupyter Notebook): Pandas, NumPy, Seaborn used for Data Cleaning and Calculating Agrregate KPIs. 
- MS Word: Report preparation and documentation of findings.
## Project Structure


```bash
E-Commerce_Sales_Insights/
│
├── README.md                                           # Project overview, objectives, and usage
├── .gitignore                                         # Files/folders to ignore in Git
│
├── dataset/                                           # Raw datasets used for analysis
│   └── e-commerce_sales_insights(raw_dataset).xlsx
│
├── sql_and_python_scripts/                            # SQL and Python scripts
│   ├── Data_Cleaning_and_KPIs_Python.ipynb
│   └── Sales_Performance_SQL_Queries.sql
│
├── dashboard/                                        # Excel dashboard and cleaned data
│   └── e-commerce_sales_insights(dashboard).xlsx
│
├── snapshots/                                        # Dashboard snapshots & visuals
│   ├── E-Commerce_Sales_Insights.png
│   ├── Orders_and_Sales_by_Month.png
│   ├── Top_5_States_by_Sales_Revenue.png
│   ├── Sales_by_Gender.png
│   ├── Orders_by_Age_Group_and_Gender.png
│   ├── Order_Status.png
│   └── Order_Distribution_by_Channel.png
│
└── reports/                                          # Analysis reports (PDFs, exports)
    ├── E-Commerce_Sales_Insights_Excel_Report.pdf
    └── E-Commerce_Sales_Insights_Python_and_SQL_Report.pdf


    

```

## Methodology
- Data Collection: Gathered public datasets from Kaggle and GitHub. 
-  Data Cleaning: Removed duplicates, corrected inconsistencies, and standardized formats using 
Python libraries Pandas and NumPy. 
- Data Preparation: Created calculated columns for business metrics in Excel. 
- Data Aggregation: Computed key performance indicators (KPIs) in Python Jupyter Notebook. 
- Data Analysis: Applied SQL functions such as GROUP BY, ORDER BY, and subqueries to analyze 
sales performance and trends. 
- Visualization: Developed interactive dashboards in Excel with charts, KPIs, and slicers. 
## Dashboard
EXCEL Dashboard Shows:

1. KPI Cards (Top Row): Displays key business metrics — Total Revenue, Total Orders, Total Units Sold, Average Order Value, and Average Quantity Per Order — enabling quick performance assessment.

2. Orders vs Sales by Month (Combo Chart): Shows month-wise comparison of total sales revenue and order count, helping identify seasonal trends and peak performance periods.

3. Sales by Gender (Pie Chart): Compares sales contributions between men and women, offering insights into gender-based purchasing behavior and target demographics.

4. Order Status Distribution (Pie Chart): Represents the percentage of orders by status — delivered, returned, refunded, and canceled — to evaluate fulfillment efficiency and customer satisfaction.

5. Top 5 States by Total Sales Revenue (Bar Chart): Highlights the five states contributing the most to total sales, identifying high-performing market regions.

6. Orders by Age Group and Gender (Clustered Column Chart): Displays order distribution across different age groups segmented by gender, uncovering key demographic patterns.

7. Order Distribution by Channel (Pie Chart): Visualizes the share of total orders across sales channels such as Amazon, Flipkart, and Ajio, allowing channel performance comparison.

8. Interactive Slicers (Left Pane): Includes slicers for Month, Sales Channel, and Product Category, enabling users to perform drill-down analysis and gain customized insights.


![E-Commerce Sales Insights](snapshots/E-Commerce_Sales_Insights.png)



## Key Insights
1. Sales peaked in March at $1.95M, followed by a 16.9% decline toward December, reflecting clear seasonality.
2. Women contribute around 65% of total sales, with the 30–39 age group as the dominant segment.
3. Maharashtra and Karnataka together account for over 50% of total state sales, followed by UP, Telangana, and Tamil Nadu.
4. Order fulfillment efficiency is high, with 92% of orders delivered and minimal cancellations or returns.
5. Amazon, Flipkart, and Myntra drive about 80% of total orders, while other platforms share the remaining 20%.

## Suggestions
1. Implement targeted promotions and special offers from Q2 to Q4 to reduce seasonal sales fluctuations. 
2. Develop marketing campaigns to increase male customer engagement. 
3. Focus retention strategies on adult and teenage female segments to boost loyalty. 
4. Expand marketing and distribution in Uttar Pradesh, Telangana, and Tamil Nadu. 
5. Maintain high fulfillment standards and optimize return, cancellation, and refund processes. 
6. Strengthen partnerships with niche platforms and explore emerging sales channels. 
7. Target women aged 30-39 in Maharashtra, Karnataka, and Uttar Pradesh with focused advertising, offers, and 
coupons on Amazon, Flipkart, and Myntra platforms.
## How to Run This Project

1. Clone the Repository:
```bash
git clone https://github.com/Anjaneyak24/e-commerce_sales_insights.git
```
2. Click the links below to open the SQL and Python scripts:

- [Sales Performance SQL Queries](scripts/Sales_Performance_SQL_Queries.sql)

- [Data Cleaning and KPIs (Python)](scripts/Data_Cleaning_and_KPIs_Python.ipynb)


3. Click the link below to view the EXCEL Dashboard:
 
- [E-Commerce Sales Insights Dashboard](dashboard/e-commerce_sales_insights_dashboard.xlsx)

4. Click the links below to view the EXCEL and Python & SQL reports in pdf:
- [E-Commerce Sales Insights Excel Report](reports/E-commerce_Sales_Insights_Excel_Report.pdf)
- [E-Commerce Sales Insights Python and SQL Report](reports/E-commerce_Sales_Insights_Python_and_SQL_Report.pdf)

5. Click the link below to view Raw Dataset:
 - [E-Commerce Sales (Raw Dataset)](dataset/e-commerce_sales(raw_dataset).xlsx)

## Author & Contact

**Anjaneya K**  
<<<<<<< HEAD
 Data Analyst | Bussiness Analyst  
📧 Email: anjaneya.data@gmail.com | anjaneyab3.142@gmail.com
=======
 Data Analyst / Bussiness Analyst  
📧 Email: anjaneyak3.142@gmail.com / anjaneyab3.142@gmail.com
>>>>>>> 32f5614216680185bd4d15cb4d7d79807ebc6d3b
