--sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent. 
--The resultant table should include the Sales Agent's full name.
select e.FirstName as "First Name", e.LastName as "Last Name", i.InvoiceId as "Invoice ID"
from Employee e, Invoice i
where e.Title = "Sales Support Agent"
group by e.LastName