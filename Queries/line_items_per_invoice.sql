--line_items_per_invoice.sql: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY
select count (il.InvoiceId) as "Number of Line Items"
from InvoiceLine il, Invoice i
where il.InvoiceId = i.InvoiceId
group by i.InvoiceId
;