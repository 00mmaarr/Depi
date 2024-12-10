CREATE VIEW vw_employee_details AS
SELECT e.first_name AS first_name, 
       e.last_name AS last_name, 
       d.department_name AS department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;

CREATE OR REPLACE VIEW vw_work_hrs AS
SELECT e.first_name AS first_name, 
       e.last_name AS last_name, 
       p.project_name AS project_name, 
       w.working_hours AS work_hours
FROM employees e
INNER JOIN work_hours w ON e.employee_id = w.employee_id
INNER JOIN projects p ON w.project_id = p.project_id
WHERE e.department_id = 5;

CREATE VIEW vw_high_status_suppliers AS
SELECT *
FROM suppliers
WHERE status > 15
WITH CHECK OPTION;

