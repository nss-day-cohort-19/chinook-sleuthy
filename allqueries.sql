--non_usa_customers.sql: Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
select c.FirstName || ' ' ||  c.LastName as "Full Name", c.CustomerId, c.Country
from Customer c
where c.Country != "USA"
;

--brazil_customers.sql: Provide a query only showing the Customers from Brazil.
select * from Customer where Country = "Brazil"
;

--brazil_customers_invoices.sql: Provide a query showing the Invoices of customers who are from Brazil. 
--The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
select c.FirstName || ' ' ||  c.LastName as "Full Name",  i.InvoiceId, i.InvoiceDate, i.BillingCountry
from Customer c, Invoice i
where i.CustomerId = c.CustomerId
and  c.Country = "Brazil"
;

--sales_agents.sql: Provide a query showing only the Employees who are Sales Agents.
select * from Employee where Title = "Sales Support Agent"
;

--unique_invoice_countries.sql: Provide a query showing a unique/distinct list of billing countries from the Invoice table.
select distinct i.BillingCountry from Invoice i
;

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

--total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?
select count (i.InvoiceId) NumberOfInvoices,
			strftime('%Y', i.InvoiceDate) as InvoiceYear
from Invoice i
where InvoiceYear = '2011'
or InvoiceYear = '2009'
group by InvoiceYear
;

--total_sales_{year}.sql: What are the respective total sales for each of those years?
--for 2009 or 2011
select '$' || sum (i.Total) Total,
			strftime ('%Y', i.InvoiceDate) as InvoiceYear
from Invoice i
where InvoiceYear = '2011'
or InvoiceYear = '2009'
group by InvoiceYear
;

--invoice_37_line_item_count.sql: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
select count (*) as "Line Items for Invoice ID 37"
from InvoiceLine
where InvoiceId = 37
;

--line_items_per_invoice.sql: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY
select count (il.InvoiceId) as "Number of Line Items"
from InvoiceLine il, Invoice i
where il.InvoiceId = i.InvoiceId
group by i.InvoiceId
;

--line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.
select t.Name, il.InvoiceLineId
from Track t, InvoiceLine il
where t.TrackId = il.TrackId
;

--line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.
select t.Name, t.Composer, il.InvoiceLineId
from Track t, InvoiceLine il
where t.TrackId = il.TrackId
;

--country_invoices.sql: Provide a query that shows the # of invoices per country. HINT: GROUP BY
select count (*) as "Number of Invoices",
			BillingCountry as "Country"
from Invoice
group by BillingCountry
;

--playlists_track_count.sql: Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.
select p.Name as "Playlist Name",
			count (pt.TrackId) as "Number of Tracks"
from Playlist p, PlaylistTrack pt
where p.PlaylistId = pt.PlaylistId
group by p.Name
;

--tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.
select t.Name, t.AlbumId, t.MediaTypeId, t.GenreId, t.Composer, t.Milliseconds, t.Bytes, t.UnitPrice
from Track t
;

--invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.

--sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.

--top_2009_agent.sql: Which sales agent made the most in sales in 2009?
--Hint: Use the MAX function on a subquery.
select
	max (Sales.TotalSales) as "TopSales"
;
	
--top_agent.sql: Which sales agent made the most in sales over all?

--sales_agent_customer_count.sql: Provide a query that shows the count of customers assigned to each sales agent.
select e.FirstName || ' ' || e.LastName as EmployeeName,
			count (c.CustomerId)
from Employee e
join Customer c on c.SupportRepId = e.EmployeeId
group by EmployeeName
;

--sales_per_country.sql: Provide a query that shows the total sales per country.

--top_country.sql: Which country's customers spent the most?

--top_2013_track.sql: Provide a query that shows the most purchased track of 2013.

--top_5_tracks.sql: Provide a query that shows the top 5 most purchased tracks over all.
select t.Name, count (t.Name) PurchaseCount
from Track t
join InvoiceLine 1 on 1.TrackId = t.trackId
group by t.Name
order by PurchaseCount desc
limit 5
;

--top_3_artists.sql: Provide a query that shows the top 3 best selling artists.


--top_media_type.sql: Provide a query that shows the most purchased Media Type.