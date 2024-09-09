select *
from Employees
join EmployeeActions ea on Employees.EmployeeID = ea.EmployeeID;


SELECT  *
FROM Customers
JOIN Accounts ON Accounts.CustomerID = Customers.CustomerID
JOIN Transactions ON Transactions.AccountID = Accounts.AccountID;

select *
from Employees
join EmployeeActions ea on Employees.EmployeeID = ea.EmployeeID
join Transactions on Transactions.Timestamp = (
SELECT t.Timestamp
from Transactions as t
where t.Timestamp = ea.Timestamp
)