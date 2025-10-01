SELECT 
	quarter,
	sum(quantity) as total_penjualan,
	sum(quantity*priceeach) as revenue
FROM
	(select orderNumber, status, quantity, priceeach, 1 as quarter from orders_1
UNION
	select orderNumber, status, quantity, priceeach, 2 as quarter from orders_2) as tabel_a
WHERE
	status = 'shipped'
GROUP BY
	quarter;