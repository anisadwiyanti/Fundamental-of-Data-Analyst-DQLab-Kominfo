SELECT
	quarter(createdate) as quarter,
	count(distinct customerid) as total_customers
FROM
	(SELECT
	customerid,
	createdate,
	quarter(createdate) as quarter
FROM customer
WHERE createdate between '2004-01-01' and '2004-06-30' and customerid in
(select distinct customerid from orders_1
UNION
	select distinct customerid from orders_2)) as tabel_b
GROUP BY
	quarter(createdate);