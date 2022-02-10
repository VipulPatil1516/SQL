--EXCEPT
--======
--The first query returns all the products. The second query returns the products that have sales.
--Therefore, the result set includes only the products that have no sales.
SELECT
product_id
FROM
production.products
EXCEPT
SELECT
product_id
FROM
sales.order_items
order by product_id;

select distinct product_id from sales.order_items
order by product_id;