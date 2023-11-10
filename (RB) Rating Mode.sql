select MODE() WITHIN GROUP (order by rating) AS modal_value
from film;