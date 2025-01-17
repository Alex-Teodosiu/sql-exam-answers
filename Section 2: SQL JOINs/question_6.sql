SELECT 
    employee.full_name AS employee, 
    manager.full_name AS manager
FROM 
    employee AS employee
LEFT JOIN 
    employee AS manager
ON 
    employee.manager_id = manager.id;
