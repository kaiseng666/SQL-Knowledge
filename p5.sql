-- Problem 5
SELECT 
    department,
    AVG(salary) as avg_salary
FROM employees
GROUP BY department;

-- Problem 5 Bonus
WITH ranked_employees AS (
    SELECT 
        department,
        name,
        salary,
        RANK() OVER (PARTITION BY department ORDER BY salary DESC) as salary_rank
    FROM employees
)
SELECT 
    department,
    salary as highest_salary,
    STRING_AGG(name, ', ') as employees
FROM ranked_employees
WHERE salary_rank = 1
GROUP BY department, salary;
