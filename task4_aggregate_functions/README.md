## Data Aggregation, Grouping, and Filtering with HAVING


# objective:

The objective of this task was to gain practical experience in analyzing and summarizing data using SQL aggregate functions, grouping results for 

better insights, and applying HAVING to filter aggregated data. 

# operations performed

# 1. Aggregate Functions

count() – counted total customers per country, total orders per customer, and total orders per month.

sum() – calculated total revenue per category, total purchase amount per customer, and total sales for specific groups.

avg() – found average product prices, both overall and per supplier, and used HAVING to filter suppliers with high average prices.

min() and max() – determined the earliest and latest order dates for each customer, as well as minimum and maximum product prices.

 stddev() – measured statistical variation and standard deviation in quantities ordered to understand sales consistency.

# 2. grouping and categorization

Grouped customers by country to see distribution and market size.

Grouped orders by year and month to track monthly sales trends.

Grouped products by category and suppliers to evaluate category-wise and supplier-wise performance.

Used DISTINCT count to find customers buying products from multiple categories.

Leveraged GROUP_CONCAT() to list all customers from the same country in a single row.

# 3. filtering groups using having

Filtered months where total orders exceeded 20.

Identified customers who placed more than 5 orders.

Selected only categories with total revenue greater than 10,000 and average price less than 25.

Picked customers spending above 15,000 in total purchases.

Applied multiple conditions in HAVING for complex filtering scenarios.

# 4. advanced analytical queries

Used window functions (ROW_NUMBER()) to rank products within each category and identify the top-selling product per category.

Found categories with high sales and low average prices for competitive pricing analysis.

Detected customers with no orders using NOT IN subqueries.

Calculated key business metrics in a single query — total orders, total sales, average sales, min/max prices, variance, and standard deviation.

# example scenarios:
Monthly sales tracking: Determined the busiest months for order activity and set performance thresholds using HAVING.

Customer segmentation: Identified high-value customers and those purchasing across multiple categories for targeted marketing.

Product ranking: Ranked products by sales volume within each category to inform inventory planning.

Revenue analysis: Found categories and suppliers driving the most revenue while also considering average price points.

# what i learnt:

Practical use of all aggregate functions (COUNT, SUM, AVG, MIN, MAX, VARIANCE, STDDEV) for business analytics.

How to use GROUP BY effectively to categorize data for reports.

Clear understanding of the difference between WHERE and HAVING — with HAVING being essential for filtering aggregated results.

Combining multiple aggregates in HAVING for advanced filtering.

Applying window functions for ranking and top-performer selection.

Realizing the importance of statistical functions to understand data variability.

Using GROUP_CONCAT() to produce consolidated customer lists per group.