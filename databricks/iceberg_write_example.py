from pyspark.sql import SparkSession

spark = SparkSession.builder \
    .appName("Iceberg Example") \
    .config("spark.sql.catalog.my_catalog", "org.apache.iceberg.spark.SparkCatalog") \
    .config("spark.sql.catalog.my_catalog.type", "hadoop") \
    .config("spark.sql.catalog.my_catalog.warehouse", "abfss://lakehouse@storage.dfs.core.windows.net/warehouse") \
    .getOrCreate()

df = spark.read.csv("sample_data/sales_data.csv", header=True)

df.writeTo("my_catalog.sales_iceberg").createOrReplace()