select 	title,
		release_year,
        language_id,
        rental_duration,
        COUNT(*)
FROM film
GROUP BY title,
		 release_year,
         language_id,
         rental_duration
having count(*) >1;