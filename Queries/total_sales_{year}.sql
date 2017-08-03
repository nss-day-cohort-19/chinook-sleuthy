--total_sales_{year}.sql: What are the respective total sales for each of those years?
--for 2009 or 2011
select '$' || sum (i.Total) Total,
			strftime ('%Y', i.InvoiceDate) as InvoiceYear
from Invoice i
where InvoiceYear = '2011'
or InvoiceYear = '2009'
group by InvoiceYear
;