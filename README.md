# ZenPulse-eCommerce-Analysis

Electronic Express, established in 1983, is an e-Commerce platform known for selling top quality consumer electronics at exceptionally low prices.  

## Dataset Structure & Initial Checks

The dataset of Electronic Express consists of 108,000 records over a 4 year period between 2019-2022 extracted from the company's Enterprise Resource Planning (ERP) system and systematically arranged into a spreadsheet comprising of four tables as displayed below: orders, customers, geo_lookup, and order_status. In preparation for analysis, a rigorous assessment of data quality was undertaken to ascertain and address potential issues.

![image](https://github.com/mlatona17/Electronic-Express-eCommerce-Analysis/assets/67985288/db27f1eb-4e48-4e04-bb76-28519240f1f4)


Employing Excel, the data cleaning process meticulously scrutinized all records. This examination ensured the identification and documentation of minimal quality issues, encompassing discrepancies in product naming, absence of country data, prerequisite columns for analysis, instances of null values. Once this process was complete and confidence in the integrity of the data was up to standard, a thorough exploratory analysis was performed to extract insights and trends to see if any key metrics could be improved.

## Summary of Key Insights and Findings

### Sales Performance Overview


**By Time Period**
![image](https://github.com/mlatona17/Electronic-Express-eCommerce-Analysis/assets/67985288/3ba6da25-616d-4d90-8792-b16b3fa803f1) 

![image](https://github.com/mlatona17/Electronic-Express-eCommerce-Analysis/assets/67985288/46a0dea5-2de8-4f7c-8176-480580ab29f1)

**By Product Mix**
![image](https://github.com/mlatona17/Electronic-Express-eCommerce-Analysis/assets/67985288/4a9b73dd-e133-4dfb-8f08-e132fed002ae)


- The 4k gaming monitor, Apple Airpods, Macbook Laptop, and Thinkpad Laptop account for 97% of total sales.
- Apple products accounted for 50% of total sales.

**By Region**
![image](https://github.com/mlatona17/Electronic-Express-eCommerce-Analysis/assets/67985288/086f830e-2711-4377-9bdb-bac426affec0)

**Product Performance by Region:** Apple Airpods were the most popular product sold within each region. Amongst all regions North America sold the most Airpods over the 4 year timespan with nearly 19k units. EMEA was next in line with over 11k sold.


### Loyalty Program

(mike - sql)

### Refund Rates

While the ThinkPad Laptop has the highest refund rate with a nearly 12% rate of return, the product that was refunded the most was the Apple Airpods being returned over 2600 times. The Macbook Air was a close second in refund rate at 11.5% and Gaming Monitor second in total refunds at ~1450 returns.

### Operational Efficiencies

**Time to Deliver:** The average overall time to deliver, as defined as the amount of time an order took from purchase to delivery, was 7.5 days. This was uniform across all regions.

**Time to Ship:** The average time to ship, as defined as the amount of time an order took to ship from purchase, was relatively similiar across the product line with the Bose Headphones shipping out the fastest at 1.78 days and the Samsung Cable Pack at 2.07 days.

### Marketing Channel Performance

Amongst all marketing channels ones listed with Unknown had the highest loyalty signup rate with 78% of those customers opting in. Email came in tied for second with a 59% rate while records with blanks under marketing channel also at 59%. However it's important to note that the marketing channel with the highest overall number of loyalty program signups was Direct with over 23k participants which accounts for ~70% of all participants across the board.

### Purchasing Platform

(mike - sql)



