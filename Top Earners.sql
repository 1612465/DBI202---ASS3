select (months*salary) as luong , count(*)                   
from Employee 
group by luong
order by luong DESC
limit 1