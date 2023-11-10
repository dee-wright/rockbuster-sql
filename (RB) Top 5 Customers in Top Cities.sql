select B.customer_id,
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
group by customer_name, B.customer_id, city, country
order by total_amount_paid desc 
limit 5;