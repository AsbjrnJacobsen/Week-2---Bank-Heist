select *
from Employees
join EmployeeActions on EmployeeActions.EmployeeID = Employees.EmployeeID
where ActionType = 'Database Access';

