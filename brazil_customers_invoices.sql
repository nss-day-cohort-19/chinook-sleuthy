--brazil_customers_invoices.sql: Provide a query showing the Invoices of customers who are from Brazil. 
--The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
select c.FirstName as "First Name", c.LastName as "Last Name",  i.InvoiceId as "Invoice ID", i.InvoiceDate as "Invoice Date", i.BillingCountry as "Billing Country"
from Customer c, Invoice i
where i.BillingCountry = "Brazil"