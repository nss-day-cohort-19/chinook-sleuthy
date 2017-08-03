--invoice_totals.sql: Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
select i.Total as "Invoice Total", 
			c.FirstName ||' '|| c.LastName as "Customer Name", 
			c.Country, 
			e.FirstName ||' '|| e.LastName as "Sale Agent"
from Invoice i, Customer c, Employee e
where c.CustomerId = i.CustomerId
and c.SupportRepId = e.EmployeeId
order by c.LastName
;