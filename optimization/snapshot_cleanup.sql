-- Expire old snapshots

CALL system.expire_snapshots(
    table => 'lakehouse.sales_iceberg',
    older_than => TIMESTAMP '2025-01-01 00:00:00'
);