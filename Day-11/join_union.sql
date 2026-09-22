USE topper_sql;
-- SELECT * FROM join_departments;
-- SELECT * FROM join_employees;

-- Combine HR/IT and Finance/Marketing employees using JOIN and UNION
SELECT join_employees.name, join_departments.dept_name
FROM join_employees
INNER JOIN join_departments
ON join_employees.dept_id = join_departments.dept_id
WHERE dept_name IN ('HR', 'IT')
UNION
SELECT join_employees.name, join_departments.dept_name
FROM join_employees
INNER JOIN join_departments
ON join_employees.dept_id = join_departments.dept_id
WHERE dept_name IN ('Finance', 'Marketing');


-- Combine department groups using JOIN and UNION ALL with source labels
SELECT join_employees.name, join_departments.dept_name, 'Technical/Office' as source
FROM join_employees
INNER JOIN join_departments
ON join_employees.dept_id = join_departments.dept_id
WHERE dept_name IN ('HR', 'IT')
UNION ALL
SELECT join_employees.name, join_departments.dept_name, 'Business' as source
FROM join_employees
INNER JOIN join_departments
ON join_employees.dept_id = join_departments.dept_id
WHERE dept_name IN ('Finance', 'Marketing');


-- Categorize employees as Technical or Non-Technical using JOIN and UNION
SELECT join_employees.name, join_departments.dept_name, 'Non-Technical' as category
FROM join_employees
INNER JOIN join_departments
ON join_employees.dept_id = join_departments.dept_id
WHERE dept_name IN ('HR', 'Finance')
UNION 
SELECT join_employees.name, join_departments.dept_name, 'Technical' as category
FROM join_employees
INNER JOIN join_departments
ON join_employees.dept_id = join_departments.dept_id
WHERE dept_name IN ('IT', 'Marketing');


-- Assign employee types by department using JOIN and UNION
SELECT join_employees.name, join_departments.dept_name, 'Office' as employee_type
FROM join_employees
INNER JOIN join_departments
ON join_employees.dept_id = join_departments.dept_id
WHERE dept_name IN ('HR', 'IT')
UNION 
SELECT join_employees.name, join_departments.dept_name, 'Finance team' as employee_type
FROM join_employees
INNER JOIN join_departments
ON join_employees.dept_id = join_departments.dept_id
WHERE dept_name IN ('Finance')
UNION
SELECT join_employees.name, join_departments.dept_name, 'Marketing team' as employee_type
FROM join_employees
INNER JOIN join_departments
ON join_employees.dept_id = join_departments.dept_id
WHERE dept_name IN ('Marketing')
ORDER BY name;

