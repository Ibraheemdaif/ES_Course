SELECT AVG(salary) FROM EMPLOYEES;

SELECT COUNT(*) FROM EMPLOYEES;

SELECT MAX(salary) FROM EMPLOYEES;

SELECT MIN(salary) FROM EMPLOYEES;

SELECT SUM(salary) FROM EMPLOYEES;

SELECT department_id, AVG(salary)
FROM EMPLOYEES
GROUP BY department_id;

SELECT job_id, COUNT(*)
FROM EMPLOYEES
GROUP BY job_id;

SELECT department_id, SUM(salary)
FROM EMPLOYEES
GROUP BY department_id
HAVING SUM(salary) > 50000;

SELECT AVG(commission_pct)
FROM EMPLOYEES
WHERE commission_pct IS NOT NULL;

SELECT COUNT(*)
FROM EMPLOYEES
WHERE salary > 10000;

SELECT job_id, MAX(salary), MIN(salary)
FROM EMPLOYEES
GROUP BY job_id;

SELECT manager_id, SUM(salary)
FROM EMPLOYEES
GROUP BY manager_id;

SELECT department_id, job_id, SUM(salary)
FROM EMPLOYEES
GROUP BY department_id, job_id;

SELECT job_id, COUNT(*)
FROM EMPLOYEES
GROUP BY job_id
HAVING COUNT(*) > 5;

SELECT department_id,
       COUNT(*),
       AVG(salary),
       MAX(salary),
       MIN(salary)
FROM EMPLOYEES
GROUP BY department_id;

SELECT department_id
FROM EMPLOYEES
GROUP BY department_id
HAVING AVG(salary) > 8000 AND COUNT(*) < 10;

SELECT department_id, SUM(salary) AS total_salary
FROM EMPLOYEES
GROUP BY department_id
ORDER BY total_salary DESC
FETCH FIRST 1 ROW ONLY;

SELECT department_id,
       SUM(salary) AS Total_Salary,
       AVG(salary) AS Average_Salary
FROM EMPLOYEES
GROUP BY department_id;