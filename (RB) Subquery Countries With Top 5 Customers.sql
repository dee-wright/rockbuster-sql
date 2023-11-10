select D.country,
	   COUNT(a.customer_id) as all_customer_count, 
       count(top_5_customers) as top_customer_count
from customer A 
inner join address B on A.address_id = B.address_id
inner join city C on B.city_id = C.city_id
inner join country D on c.country_id = D.country_id
left join
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
	group by B.customer_id, customer_name, city, country
	order by total_amount_paid desc 
	limit 5) as top_5_customers on A.customer_id = top_5_customers.customer_id
GROup by D.country
having count(top_5_customers)>0
order by all_customer_count desc;