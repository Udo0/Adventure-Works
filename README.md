AdventureWorks Sales & Profitability Analysis

An end-to-end business intelligence portfolio project using SQL
Server, Power BI, and DAX.

This project explores the AdventureWorks sales dataset to understand
sales performance, product revenue and profitability, and customer
purchasing behavior. It combines SQL-based analysis with an interactive
Power BI dashboard to turn transactional data into business-focused
insights.

> **Project focus:** Sales Analytics · Business Intelligence · SQL
> Analysis · Data Visualization

────────

Project Overview

The goal of this project is to answer practical business questions using
sales data and present the findings in a clear, decision-oriented
format.

The analysis focuses on three areas:

• Sales performance: How sales change over time and how orders
compare in value.
• Product performance: Which products and product models
contribute most to revenue and profitability.
• Customer behavior: How customers purchase, how frequently they
order, and how order values differ.

The work was completed using SQL Server for querying and analysis, and
Power BI for interactive reporting and visualization.

Business Questions

This project investigates questions such as:

1. How does sales performance change across different years?
2. Which products generate the highest revenue?
3. Which products and product models show strong profitability?
4. How do order values differ across customers?
5. Which customers place multiple orders?
6. How can customer purchasing behavior support business decisions?
7. How can product-level performance be used to support inventory and
commercial decisions?

Tools & Technologies

────────

Tool                                Purpose

────────

SQL Server                          Querying and analyzing relational
sales data

SQL Server Management Studio (SSMS) Writing and executing SQL queries

Microsoft Power BI                  Building interactive reports and
dashboards

DAX                                 Creating analytical calculations
and measures

Excel                               Supporting data review and analysis

Analysis & Implementation

1. SQL Analysis

The SQL analysis includes:

• Joining customer and sales-order data.
• Aggregating and comparing sales values.
• Ranking orders using RANK(), DENSE_RANK(), and ROW_NUMBER().
• Using PARTITION BY to rank orders within each customer.
• Applying Common Table Expressions (CTEs) to organize multi-step
analysis.
• Using subqueries and EXISTS to identify customers based on order
activity.
• Applying LAG() to compare order values within customer-level
analysis.
• Categorizing orders with CASE.
• Using filtering and grouping to investigate customer order
frequency.
• Applying SQL functions such as COALESCE, DATEDIFF, UPPER,
LEN, LEFT, and RIGHT.

These techniques were used to explore order patterns, customer activity,
and product and sales performance.

2. Power BI Dashboard

An interactive Power BI report was developed to present the sales
analysis visually.

The dashboard includes views for:

• Overall sales performance.
• Product and product-model performance.
• Revenue and gross-profit analysis.
• Profit-margin comparisons.
• Customer purchasing behavior.

The report is intended to help users explore performance across products
and time periods and identify areas that may deserve further business
investigation.

Dashboard Preview

Full Dashboard

AdventureWorks Sales Analysis - Full Dashboard

Product Model & Profit Margin Analysis

AdventureWorks Product Model and Profit Margin Analysis

Key Analytical Takeaways

The analysis highlights several useful directions for business
investigation:

• Compare product revenue and profitability rather than relying on
sales volume alone.
• Review performance at the product-model and product-variant levels
to understand differences within a product family.
• Examine customer order frequency and order values to better
understand purchasing behavior.
• Use year-based comparisons to identify changes in sales and
profitability over time.
• Validate product-level findings against the underlying data before
making inventory, pricing, or promotion decisions.

Note: The dashboard and SQL files are the source of truth for the
project results. Specific figures and business conclusions should be
checked against the report and dataset before being quoted
independently.

Business Value

This project demonstrates how SQL analysis and BI reporting can support
business users by helping them:

• Monitor sales and profitability.
• Identify high-performing products and product models.
• Investigate customer purchasing patterns.
• Compare performance across time periods.
• Use data to guide further commercial analysis and decision-making.

Repository Contents

────────

File                                Description

────────

Sales analysis.sql                SQL queries used for sales, order,
and customer analysis

Adventure works analysis.pbix     Interactive Power BI dashboard

dashboard adv 1.png               Full dashboard preview

dashboard adv 2.png               Product-model and profit-margin dashboard preview

How to Explore the Project

1. Review the dashboard screenshots above for a quick overview.
2. Open Sales analysis.sql to inspect the SQL analysis and query
techniques.
3. Open Adventure works analysis.pbix in Microsoft Power BI Desktop
to explore the interactive report.
4. Use the business questions in this README as a guide while reviewing
the analysis.

Skills Demonstrated

• SQL querying and relational data analysis
• Joins, aggregations, CTEs, and subqueries
• Window functions and analytical ranking
• Customer and sales-order analysis
• Power BI dashboard development
• DAX-based analytical reporting
• Data visualization and business communication
• Translating business questions into data analysis

Author

Abdelrahman Yasser
Business Information Systems Student | Aspiring BI & Data Analyst

• GitHub: Udo0
• Project Repository: AdventureWorks Sales & Profitability
Analysis
• LinkedIn: Abdelrahman
    Yasser