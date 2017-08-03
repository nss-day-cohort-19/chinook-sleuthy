--sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent. 
--The resultant table should include the Sales Agent's full name.
select e.FirstName || ' ' || e.LastName as "Employee Name",
			i.InvoiceId,
			i.InvoiceDate,
			i.BillingCountry,
			i.Total
from Employee e, Invoice i, Customer c
where e.EmployeeId = c.SupportRepId
and i.CustomerId = c.CustomerId
group by e.LastName
;