select D.country,
       COUNT(customer_id) as number_of_customers
from customer A 
inner join address B on A.address_id = B.address_id
inner join city C on B.city_id = C.city_id
inner join country D on C.country_id = D.country_id
group by country
order by number_of_customers desc 
limit 10;