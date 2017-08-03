--country_invoices.sql: Provide a query that shows the # of invoices per country. HINT: GROUP BY
select count (*) as "Number of Invoices",
			BillingCountry as "Country"
from Invoice
group by BillingCountry
;