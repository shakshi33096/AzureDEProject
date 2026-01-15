--CREATE VIEW CALENDAR
create view gold.calendar
as
SELECT
* FROM
OPENROWSET(
    BULK 'https://destoragedatalake1.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
        FORMAT = 'PARQUET'
) as QUER1



--CREATE VIEW CUSTOMER
CREATE VIEW gold.customers
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://destoragedatalake1.dfs.core.windows.net/silver/AdventureWorks_Customers/',
        FORMAT = 'PARQUET'
    ) AS QUER2



--CREATE VIEW PRODUCTS
CREATE VIEW gold.products
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://destoragedatalake1.dfs.core.windows.net/silver/AdventureWorks_Products/',
        FORMAT = 'PARQUET'
    ) AS QUER3



--CREATE VIEW RETURNS
CREATE VIEW gold.retrns
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://destoragedatalake1.dfs.core.windows.net/silver/AdventureWorks_Returns/',
        FORMAT = 'PARQUET'
    ) AS QUER4



--CREATE VIEW SUBCAT
CREATE VIEW gold.subcat
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://destoragedatalake1.dfs.core.windows.net/silver/AdventureWorks_SubCategories/',
        FORMAT = 'PARQUET'
    ) AS QUER6



--CREATE VIEW TERRITORIES
CREATE VIEW gold.territories
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://destoragedatalake1.dfs.core.windows.net/silver/AdventureWorks_Territories/',
        FORMAT = 'PARQUET'
    ) AS QUER7