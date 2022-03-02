select h.hacker_id, h.name, sum(score) as total
from (select hacker_id, challenge_id, max(score) as score from Submissions
    group by hacker_id, challenge_id
) newdata
join Hackers h on newdata.hacker_id = h.hacker_id
group by h.hacker_id, h.name
having total > 0
order by total desc, h.hacker_id