select sum(c.population)
from city c, country co
where c.CountryCode =co.Code and co.continent = 'Asia'