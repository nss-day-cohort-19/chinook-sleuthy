--total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?
select i.Total as "Invoice Total", i.InvoiceDate as "Invoice Date"
from Invoice i
where i.InvoiceDate LIKE "2009%"
or i.InvoiceDate LIKE "2011%"
