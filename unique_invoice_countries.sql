--unique_invoice_countries.sql: Provide a query showing a unique/distinct list of billing countries from the Invoice table.
select distinct i.BillingCountry from Invoice i
;
