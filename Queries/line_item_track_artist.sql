--line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.
select t.Name, t.Composer, il.InvoiceLineId
from Track t, InvoiceLine il
where t.TrackId = il.TrackId
;