--invoice_37_line_item_count.sql: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
select count (*) as "Line Items for Invoice ID 37"
from InvoiceLine
where InvoiceId = 37
;