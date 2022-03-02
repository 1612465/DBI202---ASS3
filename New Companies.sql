SELECT c.company_code, c.founder, count(distinct l.lead_manager_code), count(distinct s.senior_manager_code), count(distinct m.manager_code), count(distinct e.employee_code)
FROM Company c
INNER JOIN Lead_Manager l
ON c.company_code = l.company_code
INNER JOIN Senior_Manager s
ON l.company_code = s.company_code
INNER JOIN Manager m
ON s.company_code = m.company_code
INNER JOIN Employee e
ON m.company_code = e.company_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code;