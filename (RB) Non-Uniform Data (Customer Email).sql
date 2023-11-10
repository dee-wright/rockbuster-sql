select email,
	   COUNT(email)
from customer
group by email
order by email ASC;