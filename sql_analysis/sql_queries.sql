# The most popular products by region
-- Join orders, customers, and geo_lookup tables to match regions and orders.
-- Use a CTE to add total number of orders and total price sold per region.
-- Use another CTE and ROW_NUMBER() to rank the results by descending number of orders within each region.
-- Filter results to show top product sold in each region (i.e., where rank = 1).

with sales_by_product as (
  select region,
    product_name,
    count(distinct orders.id) as total_orders
  from core.orders
  left join core.customers
    on orders.customer_id = customers.id
  left join core.geo_lookup
    on geo_lookup.country = customers.country_code
  group by 1,2),

ranked_orders as (
  select *,
    row_number() over (partition by region order by total_orders desc) as order_ranking
  from sales_by_product
  order by 3 desc)

select *
from ranked_orders 
where order_ranking = 1;


# Refund rates by product
-- Join orders and order_status tables to match products with refund status.
-- Consolidate and validate product names using CASE.
-- Create helper column to identify refunds (1 = refund, 0 = no refund).
-- Sum helper column for total number of refunds.
-- Average helper column for refund rate; convert to percent (x 100) and convert to integer.
-- Order by descending refund rate to see products with highest refund rates.

select case when orders.product_name = '27in"" 4k gaming monitor' then '27in 4K gaming monitor' else orders.product_name end as product_clean,
  sum(case when order_status.refund_ts is not null then 1 else 0 end) as refunds,
  avg(case when order_status.refund_ts is not null then 1 else 0 end)*100 as refund_rate
from core.orders
left join core.order_status
  on orders.id = order_status.order_id
group by 1
order by 3 desc;


# Unique customer count: loyalty vs non-loyalty
--- Join customers and orders tables to match customer_id with loyalty_program
--- Use Distinct function to remove customers who have purchased more than once
--- Extract year from purchase_ts to group and order each membership type by year in ascending order

select distinct count(customers.id) as unique_customers,
  customers.loyalty_program,
  extract(year from orders.purchase_ts) as year
from core.customers
left join core.orders
  on customers.id = orders.customer_id
group by 2,3
order by 3;


# Average time to deliver by region
--- Join order_status, orders, customers, and geo_lookup tables to match regions and delivery times
--- Use DATE_DIFF() to find the average delivery time per region in days
--- Use WHERE function to filter out regions listed as null
--- Order the results by descending delivery time and group by region

select geo_lookup.region,
  round(avg(date_diff(order_status.delivery_ts,order_status.purchase_ts,day)),2) as avg_delivery_time
from core.order_status
left join core.orders
  on order_status.order_id = orders.id
left join core.customers
  on orders.customer_id = customers.id
left join core.geo_lookup
 on customers.country_code = geo_lookup.country
where geo_lookup.region is not null
group by 1
order by 2 desc;


# Average time to ship by product
--- Join order_status, orders, customers, and geo_lookup tables to match 
--- Clean and validate product names using CASE.
--- Use DATE_DIFF() to find the average ship time by product in days
--- Use WHERE function to filter out product names listed as null
--- Order the results by descending ship time and group by product_name

select case when orders.product_name = '27in"" 4k gaming monitor' then '27in 4K gaming monitor' else orders.product_name end as product_clean,
  round(avg(date_diff(order_status.ship_ts,order_status.purchase_ts,day)),2) as avg_ship_time
from core.order_status
left join core.orders
  on order_status.order_id = orders.id
left join core.customers
  on orders.customer_id = customers.id
left join core.geo_lookup
 on customers.country_code = geo_lookup.country
where orders.product_name is not null
group by 1
order by 2 desc;


# Average time to deliver: loyalty vs non-loyalty members
--- Join customers, orders and order_status tables to match loyaty_program and delivery times
--- Use DATE_DIFF() to find the average delivery time per membership type in days
--- Order the results by descending delivery time and group by membership type

select customers.loyalty_program,
  round(avg(date_diff(order_status.delivery_ts,order_status.purchase_ts,day)),2) as avg_loyalty_delivery_time
from core.customers
left join core.orders
  on customers.id = orders.customer_id
left join core.order_status
  on orders.id = order_status.order_id
group by 1
order by 2 desc;


# Average order value per year for products that are either laptops or headphones
--- Extract year from purchase_ts
--- Calculate the average order value by using AVG function
--- Avoid case and naming convention sensitivity errors using LOWER and LIKE ANY along with wildcards(%) surrounding keywords

select extract(year from purchase_ts) as year,
  round(avg(usd_price),2) as aov
from core.orders
where lower(product_name) like any('%laptop%','%headphones%')
group by 1
order by 1;