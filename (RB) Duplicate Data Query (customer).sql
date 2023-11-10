select first_name,
	   last_name,
       email,
       COUNT(*)
FROM customer
GROUP BY first_name,
	     last_name,
         email
having count(*) >1;