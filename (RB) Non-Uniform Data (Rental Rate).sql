select rental_rate,
	   COUNT(rental_rate)
from film
group by rental_rate
order by rental_rate ASC;