select replacement_cost,
	   COUNT(replacement_cost)
from film
group by replacement_cost
order by replacement_cost ASC;