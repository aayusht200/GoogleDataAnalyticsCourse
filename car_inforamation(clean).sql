SELECT DISTINCT fuel_type
FROM [master].[dbo].[car_info]

SELECT *
FROM [master].[dbo].[car_info]

select MIN(length) as min_length, MAX(length) as max_length from master.dbo.car_info

SELECT *
FROM [master].[dbo].[car_info]
WHERE num_of_doors is NULL

UPDATE master.dbo.car_info SET num_of_doors='four' WHERE make='dodge' AND fuel_type='gas' AND body_style='sedan'

UPDATE master.dbo.car_info SET num_of_doors='four' WHERE make='mazda' AND fuel_type='diesel' AND body_style='sedan'

SELECT
DISTINCT num_of_cylinders
FROM master.dbo.car_info

SELECT
*
FROM master.dbo.car_info
WHERE
num_of_cylinders='tow'

UPDATE master.dbo.car_info SET num_of_cylinders='two' WHERE make='mazda' AND fuel_type='gas' AND body_style='hatchback'

SELECT
*
FROM master.dbo.car_info
WHERE compression_ratio>23

UPDATE master.dbo.car_info SET compression_ratio=7 WHERE compression_ratio=23 AND make='audi'

SELECT
*
FROM master.dbo.car_info

SELECT
DISTINCT drive_wheels
FROM master.dbo.car_info

SELECT
DISTINCT drive_wheels,
LEN(drive_wheels) as string_length
FROM master.dbo.car_info

SELECT
price
from master.dbo.car_info

SELECT
MAX(price)
from master.dbo.car_info


DELETE FROM master.dbo.car_info WHERE price=0