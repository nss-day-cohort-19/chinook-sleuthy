--line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.
select t.Name, il.InvoiceLineId
from Track t, InvoiceLine il
where t.TrackId = il.TrackId
;