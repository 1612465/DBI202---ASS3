select c.name
from city c, country co
where c.CountryCode =co.Code and co.continent = 'Africa'