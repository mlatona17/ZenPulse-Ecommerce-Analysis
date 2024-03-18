# ZenPulse-Ecommerce-Analysis

ZenPulse, established in 2019, is an electronics E-commerce retailer known for selling top quality consumer electronics at exceptionally low prices. I performed an exploratory analysis of their under-utilized core sales data to investigate yearly sales trends, product mix, loyalty program efficacy, marketing channel performance, and operational efficiencies for presentation to cross-functional teams. Support for all analyses can be found here: [Excel Workbook]() | [SQL Queries](https://github.com/mlatona17/ZenPulse-Ecommerce-Analysis/blob/main/sql_analysis/sql_queries.sql)

## Dataset Contents and Structure

ZenPulse's dataset consists of over 108k records over a 4 year period between 2019-2022 comprising of four tables as displayed below: orders, customers, geo_lookup, and order_status. In preparation for analysis, a rigorous assessment of data quality was undertaken to ascertain and address potential issues. Documentations of these steps can be found [here](https://github.com/mlatona17/ZenPulse-Ecommerce-Analysis/blob/main/Issue_log).

![image](https://github.com/mlatona17/Electronic-Express-eCommerce-Analysis/assets/67985288/db27f1eb-4e48-4e04-bb76-28519240f1f4)


## Sales Performance Overview


### By Time Period

![image](https://github.com/mlatona17/ZenPulse-Ecommerce-Analysis/assets/67985288/86f1c938-2f4c-45aa-9743-e83a1e287be8)
![image](https://github.com/mlatona17/ZenPulse-Ecommerce-Analysis/assets/67985288/f9847f90-b401-4c3f-970b-1afb5f82e570)


- Between 2019 and 2022 total sales were $28M which consister of 108k orders and an average order value of $260 per order.
- 2020 saw a 163% jump in sales and doubling in total orders compared to prior year. In particular Q2 of that year saw a 53% spike in sales and 50% increase in total orders from Q1 which can likely be attributed to increased spending during lockdowns from the pandemic.
- The largest dropoff in sales YoY came in 2022 where the company saw a $4.2M decrease (-46%) in total sales.
- Across all 4 years the average order value increased in Q3 and Q4 which can be explained by customers purchasing in bulk during the holiday season.


### By Product Mix

![image](https://github.com/mlatona17/ZenPulse-Ecommerce-Analysis/assets/67985288/2e309f4b-b0d1-4ed2-b138-226bf87ca37f)



- The 4k gaming monitor, Apple Airpods, Macbook Laptop, and Thinkpad Laptop account for 96% of total sales.
- The Apple Airpods were consistently the most popular product every year with total orders of 48k (45% of total orders). Due to pricing differences however the 4k Gaming Monitor brought in the most revenue with nearly $10M in sales.
- In contrast the Bose Soundport Headphones was the least popular product by a large margin with only 27 orders and $3.3k in sales.

  
### By Region

- Overall North America dominated in both total sales and orders with over a 50% share in each. On the contrary LATAM accounted for only 6% and 7% share of total sales and orders respectively.

### Product Performance by Region

- Apple Airpods were the most popular product sold within each region with an average of 12k units sold per year. Amongst all regions North America bought the most Airpods with 25k units sold followed by EMEA (15k), APAC (5.6k) and LATAM (2.6k).


## Refund Rates

Overall $2.2M or 8% of total sales was refunded. The Thinkpad Laptop and Macbook Air Laptop had the highest refund rates at 12% and 11% respectively. The Apple Airpods and 27in 4k Gaming Monitor had the largest number of refunds however with 2,636 and 1,444 returns respectively.


## Loyalty Program

- The loyalty program has seen an increase in partcipation over the years. The proportion of loyalty to non-loyalty members went from 12%/88% to 53%/47% from 2019 to 2022.
- In 2022 loyalty members spent an average $30 more per order than non-loyalty where in 2019 non-loyalty spent $26 more per order than loyalty.

## Marketing Channel Performance

![image](https://github.com/mlatona17/ZenPulse-Ecommerce-Analysis/assets/67985288/35f7a465-4b37-4c25-b229-a182097ad894)

- The direct marketing channel brought in the most business with $23M (78%) in sales and and 84k orders while social media attracted lowest with $300k in sales and 1.3k in orders.
- Amongst each marketing channel loyalty members favored email marketing the most over non-loyalty with 58% of purchases driven from that channel coming from members. 


## Operational Efficiencies

**Time to Deliver:** The average overall time to deliver, as defined as the amount of time an order took from purchase to delivery, was 7.5 days. This was uniform across all regions.

**Time to Ship:** The average time to ship, as defined as the amount of time an order took to ship from purchase, was relatively similiar across the product line with the Bose Headphones shipping out the fastest at 1.78 days and the Samsung Cable Pack the slowest at 2.07 days.

Interestingly, loyalty members experience the same delivery time as non-members (7.5 days), suggesting a potential area for improvement in delivery standards for higher value customers.

## Recommendations
Based on the comprehensive analysis conducted, the following recommendations are proposed for consideration by the appropriate cross-functional teams:

### Sales and Marketing
- Prioritize marketing incentives on high-performing items like the Apple AirPods Headphones and 27in 4K Gaming Monitor.

### Inventory and Operations
- Work with the products team to investigate the poor performance of the Bose Soundsport Headphones and consider phasing product out completely assuming an negative profit margin when factoring in variable and fixed costs associated.



- The average time to deliver was the same for both loyalty and non-loyalty members possibly indicating potential for improvement for the company.


