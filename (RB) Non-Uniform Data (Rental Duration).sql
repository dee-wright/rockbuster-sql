select rental_duration,
	   COUNT(rental_duration)
from film
group by rental_duration
order by rental_duration ASC;