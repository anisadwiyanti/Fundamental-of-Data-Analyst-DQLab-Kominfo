SELECT YEAR(order_date) as years, 
    SUM(sales) as sales,
    SUM(discount_value) as promotion_value,
    ROUND(SUM(discount_value) / SUM(sales) * 100, 2) as burn_rate_percentage
FROM dqlab_sales_store
WHERE
	order_status LIKE 'Order Finished'
GROUP BY
    years
ORDER BY
    years;