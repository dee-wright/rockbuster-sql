select title,
	   rating,
       release_year
from film
WHERE rating IS null OR title IS null OR release_year IS null; 