--sales_agents.sql: Provide a query showing only the Employees who are Sales Agents.
select e.FirstName as "First Name", e.LastName as "Last Name", e.EmployeeId as "Employee ID", e.Title as "Title"
from Employee e
where e.Title = "Sales Support Agent"