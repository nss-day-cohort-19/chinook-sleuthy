--brazil_customers.sql: Provide a query only showing the Customers from Brazil.
select c.FirstName as "First Name", c.LastName as "Last Name", c.CustomerId as "Customer ID", c.Country as "Country"
from Customer c
where c.Country = "Brazil"