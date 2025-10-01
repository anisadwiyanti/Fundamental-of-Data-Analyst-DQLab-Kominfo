SELECT * 
FROM (SELECT categoryid, COUNT(DISTINCT orderNumber) AS total_order, SUM(quantity) AS total_penjualan
	  FROM (SELECT productCode,
      orderNumber,
      quantity,
      status,
      LEFT(productCode, 3) AS categoryid
      FROM orders_2 WHERE status = 'shipped') tabel_c
GROUP BY categoryid) a
ORDER BY total_order DESC;