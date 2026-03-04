-- Create Iceberg table in Databricks

CREATE TABLE lakehouse.sales_iceberg
USING ICEBERG
LOCATION 'abfss://lakehouse@storageaccount.dfs.core.windows.net/iceberg/sales'
AS
SELECT * FROM sales_raw;
