SELECT CAST(purchase_price as money) as purchase_price FROM master.dbo.customer_purchase ORDER BY CAST(purchase_price as money) DESC

SELECT CAST(date as date) as date,purchase_price FROM master.dbo.customer_purchase WHERE [date] BETWEEN '2020-12-01' AND '2020-12-31'

SELECT * FROM master.dbo.customer_purchase