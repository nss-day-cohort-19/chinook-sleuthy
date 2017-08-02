--brazil_customers_invoices.sql: Provide a query showing the Invoices of customers who are from Brazil. 
--The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
select c.FirstName || ' ' ||  c.LastName as "Full Name",  i.InvoiceId, i.InvoiceDate, i.BillingCountry
from Customer c, Invoice i
where i.CustomerId = c.CustomerId
and  c.Country = "Brazil"
;