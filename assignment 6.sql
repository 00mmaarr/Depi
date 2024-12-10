SELECT employee_id, last_name, salary
FROM employees
WHERE salary BETWEEN 2000 AND 5000
  AND manager_id NOT IN (101, 200);

  SELECT e.first_name,last_name AS employee_name, d.department_name AS department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
ORDER BY d.department_name ASC;

SELECT department_id, 
       COUNT(employee_id) AS num_employees, 
       AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id;
