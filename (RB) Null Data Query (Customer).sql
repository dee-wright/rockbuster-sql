select first_name,
	   last_name,
       email
from customer
WHERE first_name IS null OR last_name IS null OR email IS null; 