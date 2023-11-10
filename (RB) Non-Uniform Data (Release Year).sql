select release_year,
	   COUNT(release_year)
from film
group by release_year