
Select s.seller_name
From seller s
LEFT JOIN orders o
ON  o.seller_id=s.seller_id
AND o.sale_date BETWEEN '2020-01-01' AND '2020-12-31'
WHERE o.order_id is NULL
Order by s.seller_name asc