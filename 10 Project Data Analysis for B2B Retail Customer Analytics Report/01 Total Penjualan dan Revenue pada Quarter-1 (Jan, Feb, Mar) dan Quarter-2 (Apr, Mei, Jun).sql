SELECT 
sum(quantity) as total_penjualan, 
sum(quantity*priceeach) as revenue
FROM orders_1;
SELECT
sum(quantity) as total_penjualan,
sum(quantity*priceeach) as revenue
FROM orders_2
WHERE
status = 'Shipped';