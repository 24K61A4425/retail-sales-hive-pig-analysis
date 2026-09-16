DESCRIBE retail_sales_raw;

LOAD DATA INPATH 'hdfs://localhost:9000/retailsales/retail_sales_50kb.csv'
INTO TABLE retail_sales_raw;

SELECT COUNT(*) AS total_records
FROM retail_sales_raw;
