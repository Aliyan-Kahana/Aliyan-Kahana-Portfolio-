# Aliyan-Kahana-Portfolio-
A comprehensive data analysis project examining a used car dataset of over one million rows processed via a single-file workflow, leveraging Python, SQL, Excel, and Power BI to uncover pricing trends, registration age distribution, brand market shares, and engine specifications.
## 🐍 Python Data Pipeline & Preprocessing

* **Jupyter Notebook**: [`used_car_price_prediction.ipynb`](./used_car_price_prediction.ipynb)contains data preprocessing, EDA, and feature engineering.
* **Data Ingestion**: Efficiently loaded and processed a massive dataset containing over 1,000,000 rows into memory within a single-file workflow framework.
* **Data Cleaning & Standardization**: Used Pandas and NumPy to handle missing values, strip whitespace, standardize text formatting across categorical features, and remove anomalies.
* **Feature Engineering**: Transformed raw attributes into actionable metrics, such as calculating registration age and processing engine specifications for better statistical evaluation.
# Used Cars Market Analysis & Price Prediction

## Project Overview
* **Description**: A comprehensive data analysis project examining a used car dataset of over one million rows processed via a single-file workflow.
* **Objective**: Leverage Python to clean, analyze, and build predictive insights into pricing trends, registration age distribution, brand market shares, and engine specifications.

## Project Structure
* **Main Script**: `used_car_price_prediction.ipynb` contains the core Jupyter Notebook for data preprocessing, exploratory data analysis (EDA), feature engineering, and model implementation.

## Tech Stack & Libraries
* **Language**: Python
* **Data Manipulation & Cleaning**: Pandas, NumPy
* **Data Visualization**: Matplotlib

## Key Features & Insights
* **Large-Scale Processing**: Handled data processing for over 1,000,000 rows efficiently within a single-file workflow framework.
* **Data Hygiene**: Cleaned and standardized raw string features, handled missing values, and managed outliers to ensure data integrity.
* **Statistical Visualization**: Generated charts using Matplotlib to uncover key pricing determinants, depreciation trends, and dominant automotive brand shares.

## Usage
* **Clone Repository**: `git clone https://github.com/aliyan-kahana/Aliyan-Kahana-Portfolio.git`
* **Run Environment**: Launch Jupyter Notebook using `jupyter notebook used_car_price_prediction.ipynb`
## 🛢️ SQL Data Analysis & Business Queries

* **SQL Script**: [`cars.sql`](./cars.sql)

## Query Capabilities & Business Logic

* **Multi-Table Joins**: Executed multi-level `JOIN` operations across customer, order, order item, and product tables.
* **Advanced Aggregations**: Applied `SUM()`, `COUNT()`, `AVG()`, and grouping logic to calculate regional revenues, average order values, and category price-to-freight ratios.
* **CTE & Subqueries**: Used Common Table Expressions (`WITH`) and subqueries to structure top/bottom product category rankings and total order calculations.
## License
* **Type**: Distributed under the MIT License (see `LICENSE` for details).
## 📊 Power BI Interactive Dashboards & Analytics

* **Dashboard Overview**: Comprehensive visual analysis tracking pricing trends, registration age, brand market shares, and engine specifications for used cars.

## Key Power BI Features & Modeling

* **Data Modeling & DAX**: Built custom DAX measures for Average Car Price, Total Vehicle Count, Price-to-Mileage Ratios, and Year-over-Year depreciation trends.
* **Interactive Filtering & Slicers**: Enabled dynamic cross-filtering by car brand, model year, fuel type, transmission, and body style.
* **Executive Visualizations**: Designed custom visual layouts highlighting market pricing drivers, regional distribution, and top-selling brand configurations.
* ## 📈 Excel Analytics & Market Reporting

* **Excel File**: [Download Used Cars Analysis Excel File](https://drive.google.com/uc?export=download&id=1rFVI-xMbblhBJ3QsIJj-b6ml6cCaoiYc)
### Advanced Formulas & Pivot Tables

* **Data Retrieval & Cleaning**: Applied `XLOOKUP` and `COALESCE` formulas to handle missing records and merge vehicle specifications dynamically without modifying source data.
* **Aggregations & Summaries**: Built interactive Pivot Tables using `AVERAGEIFS` and `SUMPRODUCT` to aggregate market prices across different car brands, registration years, and mileage brackets.
* **KPI Formatting & Charts**: Created conditional formatting rules and custom charts to highlight key pricing trends, market share distribution, and depreciation metrics.
* ## Key Insights

* **Executive Pricing & Depreciation**: Tracked 1,000,000 used car listings showing an average valuation of 1.01M, highlighting a steady price depreciation curve against vehicle registration age.
* **Engine & Performance Metrics**: Analyzed engine specifications across 39 active models, recording an average horsepower of 120.54 and 1.51K engine CC mapped across different fuel types and brands.
* **Vehicle Condition & Ownership**: Evaluated accident history and ownership impact, revealing that first-owner cars make up 599K listings and accident-free vehicles maintain a higher average valuation.
* **Regional Inventory Distribution**: Mapped inventory across 9 active cities (including Delhi, Hyderabad, and Mumbai), detailing regional volume and brand-level market shares.

## Dashboard Screenshots

### 1. Executive Overview and Price Dynamics
![Executive Overview](./images/Screenshot%202026-09-01%20101353.png)

### 2. Engine & Performance Specifications
![Engine & Performance](./images/Screenshot%202026-09-01%20101402.png)

### 3. Vehicle Feature and Condition Analysis
![Vehicle Feature and Condition](./images/Screenshot%202026-09-01%20101530.png)

### 4. Used Car Inventory & Regional Price Overview
![Inventory & Regional Overview](./images/Screenshot%202026-09-01%20101641.png)
