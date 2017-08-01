--non_usa_customers.sql: Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
select c.FirstName as "First Name", c.LastName as "Last Name", c.CustomerId as "Customer ID", c.Country as "Country"
from Customer c
where c.Country != "USA"
