select MIN(rental_duration) AS min_duration,
       MAX(rental_duration) AS max_duration,
       avg(rental_duration) as avg_duration,
       count(rental_duration) as count_rent_duration,
       count(*) as count_rows
from film;