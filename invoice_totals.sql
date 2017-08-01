--invoice_totals.sql: Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
select '$' + i.Total as "Invoice Total", c.FirstName as "Customer First Name", c.LastName as "Customer Last Name", c.Country as "Country", e.FirstName as "Employee First Name", e.LastName as "Employee Last Name"
from Employee e, Invoice i, Customer c