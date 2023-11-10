select MIN(replacement_cost) AS min_replace_cost,
       MAX(replacement_cost) AS max_replace_cost,
       avg(replacement_cost) as avg_replace_cost,
       count(replacement_cost) as count_replace_cost,
       count(*) as count_rows
from film;