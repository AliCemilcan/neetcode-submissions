-- Write your query below
-- go left join all the way and group by after

Select sp.name
From sales_person sp
LEFT JOIN orders o ON o.sales_id=sp.sales_id
LEFT JOIN company c ON c.com_id = o.com_id
Group By sp.name, sp.sales_id
HAVING SUM(CASE WHEN c.name = 'CRIMSON' THEN 1 ELSE 0 END) = 0;
