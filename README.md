# Sales Performance Dashboard

## Business scenario
You are a Data Analyst at a retail company. The Sales Manager needs an interactive view of revenue, profit, order volume, product performance, regional results and sales representative performance.

## Files
- `sales_data.csv` — synthetic dataset (1,200 order records)
- `sales_data_and_project_guide.xlsx` — dataset and project brief
- `DAX_measures.txt` — core Power BI measures
- `SQL_analysis_queries.sql` — example SQL analysis

## Build it in Power BI
1. Open Power BI Desktop.
2. Select **Get Data > Text/CSV** and import `sales_data.csv`.
3. Check data types: Order_Date = Date; Discount and Profit Margin = Percentage; Revenue, Cost, Profit and Unit_Price = Decimal Number; Quantity = Whole Number.
4. Rename the imported table to `Sales`.
5. Create the DAX measures in `DAX_measures.txt`.
6. Add slicers for Year, Region, Category and Sales_Rep.

## Suggested report layout
### Page 1 — Executive Overview
- KPI cards: Total Revenue, Total Profit, Total Orders, Profit Margin, Average Order Value
- Line chart: Revenue by month
- Bar chart: Revenue by Category
- Column chart: Revenue by Region
- Slicers: Year, Region, Category

### Page 2 — Product & Region Analysis
- Bar chart: Top 10 Products by Revenue
- Matrix: Category and Product with Revenue and Profit
- Bar chart: Profit by Region
- Slicers: Year, Category, Region

### Page 3 — Sales Representative Performance
- Bar chart: Revenue by Sales Rep
- Bar chart: Profit by Sales Rep
- Table: Sales Rep, Revenue, Profit, Orders, Profit Margin
- Slicers: Year and Region

## Questions your dashboard should answer
1. Which year and month generated the most revenue?
2. Which category and product generated the most revenue?
3. Which region generated the highest profit?
4. Which sales representative generated the highest revenue?
5. Is the profit margin healthy across all categories?
6. What happens to revenue when users filter by region or year?

## Portfolio note
The dataset is fictional and generated for learning. Clearly label it as synthetic in your portfolio.
