-- use left join with seller

Select s.seller_name
From seller s
Left Join orders o ON s.seller_id=o.seller_id
AND o.sale_date BETWEEN '2020-01-01' AND '2020-12-31'
WHERE o.seller_id is Null
Order by s.seller_name asc
