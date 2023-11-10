select MIN(rental_rate) AS min_rent,
       MAX(rental_rate) AS max_rent,
       avg(rental_rate) as avg_rent,
       count(rental_rate) as count_rent_values,
       count(*) as count_rows
from film;