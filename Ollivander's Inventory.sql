select w.id,wa.age,w.coins_needed,w.power
from Wands w inner join Wands_Property wa on w.code = wa.code 
where wa.is_evil = 0 and w.coins_needed = (select min(coins_needed)from Wands w1 inner join Wands_Property wa1 on w1.code = wa1.code where wa.age=wa1.age and w.power = w1.power)
order by w.power desc,wa.age desc



