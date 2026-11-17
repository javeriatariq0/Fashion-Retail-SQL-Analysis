# Fashion-Retail-SQL-Analysis
Data analysis of Zara fashion sales using MySQL to identify high-revenue products and customer buying patterns.

## Dataset
Zara product sales data (20252 rows, 17 columns): product category, price, sales volume, promotion, seasonality, material.

## Questions Answered
- How many products, units sold, and total revenue?
- Which section ( women or men) earns the most revenue?
- Do promoted products sell more than non-promoted ones?
- Does product position in store affect sales?
- which material generated the highest revenue?

## Key Findings

**Overall:** The dataset contains 20,252 products with 22.2 million units sold, generating about $884.6 million in total revenue.

**Women vs men:** Women's clothing generates about $598.5M (67.7% of revenue), roughly double men's $286.1M. Average prices are almost identical ($41.86 vs $42.13), so the gap comes from volume, not price.

**Store placement:** Product position has almost no effect on how well an individual item sells. Front-of-store items average 1,103 units, end-cap 1,100 and aisle 1,090. Aisle generates the most revenue ($340.3M) only because it holds the most products (7,810).

**Promotional impact:** Promoted items average 1,412 units per item versus 872 for non-promoted, about 62% more, and are priced about 15% lower. Total revenue is almost identical ($440.7M vs $443.9M), so promoted items earn the same from fewer products.

**Materials:** Wool ($170.2M) and cotton ($169.0M) are the top materials, together about 38% of revenue. The top five materials (wool, cotton, wool blend, polyester, linen) generate about 81% of revenue.

**These results show correlation, not cause. The data can't prove that promotions or placement directly change sales.**

## Tools
MySQL, MySQL Workbench

## Files
- `zara_sales_analysis.sql`: all queries used
