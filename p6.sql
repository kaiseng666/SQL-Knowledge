-- Problem 6
SELECT name, position
FROM employees
WHERE salary > 50000;

-- Problem 6 Bonus
SELECT name, position, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;
