select co.continent , floor(avg(c.population))
from city c, country co
where c.CountryCode =co.Code
group by co.continent