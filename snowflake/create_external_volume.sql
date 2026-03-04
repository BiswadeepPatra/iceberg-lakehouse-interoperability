-- Example Snowflake external volume configuration

CREATE EXTERNAL VOLUME azure_volume
STORAGE_LOCATIONS =
(
    (
        NAME = 'azure-lakehouse'
        STORAGE_PROVIDER = 'AZURE'
        STORAGE_BASE_URL = 'azure://storageaccount.blob.core.windows.net/iceberg'
    )
);
