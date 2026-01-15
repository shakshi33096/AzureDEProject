CREATE DATABASE SCOPED CREDENTIAL cred_shakshi
WITH IDENTITY = 'Managed Identity'


create external data SOURCE source_silver
with
(
    LOCATION = 'https://destoragedatalake1.dfs.core.windows.net/silver',
    CREDENTIAL = cred_shakshi
)


create external data SOURCE source_gold
with
(
    LOCATION = 'https://destoragedatalake1.dfs.core.windows.net/gold',
    CREDENTIAL = cred_shakshi
)


CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)




-------------------CREATE EXTERNAL TABLE EXTCUSTOMERS-------------------------

CREATE EXTERNAL TABLE gold.extcustomers
WITH
(
    LOCATION = 'extcustomers',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
as 
SELECT * from gold.customers


SELECT * from gold.extcustomers
