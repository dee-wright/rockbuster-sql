select rating,
	   COUNT(rating)
from film
group by rating
order by rating ASC;