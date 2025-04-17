# AWS QuickSight Sales Dashboard

This project demonstrates how to build an interactive business intelligence dashboard on AWS using the QuickSight platform. The dataset is based on the Superstore sales data and visualizes insights across cities, categories, regions, and time.

![Dashboard Preview](https://github.com/Rahulpersie66/-AWS-QuickSight-Sales-Dashboard/blob/main/assests/dashboard.jpg)

## 🔧 Stack

- **Amazon S3**: Storage for CSV data
- **AWS Glue**: Crawlers for schema and metadata creation
- **Amazon Athena**: SQL-based querying of S3 data via Glue Catalog
- **AWS QuickSight**: Visualization & Dashboard layer

## 📊 Visuals Include

- **Sum of Discount by City** (Pie chart)
- **Sum of Quantity by Order Date** (Bar chart)
- **Sum of Profit by City and Category** (Grouped bar)
- **Max of Discount and Sales by Region** (Line chart)

## 🛡️ Permissions Configured

- IAM role access to Athena, Glue, and S3
- S3 bucket policy for QuickSight access
- Glue catalog used in Direct Query mode in QuickSight

## 💡 Learning Outcomes

- Hands-on with end-to-end serverless BI architecture on AWS
- Learned about region and IAM-based permission debugging
- Worked with QuickSight's Direct Query vs SPICE

