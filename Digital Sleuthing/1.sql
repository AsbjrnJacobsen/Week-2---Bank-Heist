select *
from Employees
join EmployeeActions on EmployeeActions.EmployeeID = Employees.EmployeeID
where ActionType = 'Database Access';


select *
from Employees
join EmployeeActions ea on Employees.EmployeeID = ea.EmployeeID;
