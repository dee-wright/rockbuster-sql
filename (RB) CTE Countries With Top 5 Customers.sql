WITH top_customers_cte (customer_id, customer_name, city, country) AS  
	(select B.customer_id,
       CONCAT(first_name,' ',last_name) AS customer_name,
       D.city,
       E.country,
       SUM(a.amount) as total_amount_paid
	from payment A 
	inner join customer B on A.customer_id = B.customer_id
	inner join address C on B.address_id = C.address_id
	inner join city D on C.city_id = D.city_id
	inner join country E on D.country_id = E.country_id
	WHERE city in ('Aurora',
               		'Tokat',
               		'Atlixco',
               		'Emeishan',
               		'Pontianak',
               		'Shimoga',
               		'Aparecida de Goinia',
               		'Zalantun',
               		'Taguig')
	group by cB.customer_id, customer_name, city, country
	order by total_amount_paid desc 
	limit 5)
SELECT country, COUNT(customer_id) AS all_customer_count
from top_customers_cte
GROUP BY country
ORDER BY all_customer_count DESC
LIMIT 5;