-- Example compaction procedure

CALL system.rewrite_data_files(
    table => 'lakehouse.sales_iceberg'
);
