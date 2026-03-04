-- Register Iceberg table in Snowflake

CREATE ICEBERG TABLE iceberg_sales
EXTERNAL_VOLUME = azure_volume
CATALOG = 'SNOWFLAKE'
METADATA_FILE_PATH = 'iceberg/sales/metadata/00001.json';