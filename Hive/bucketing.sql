CREATE TABLE retail_sales_bucketed (
    transaction_id int,
    customer_id string,
    order_date date,
    region string,
    city string,
    product_id string,
    product_name string,
    category string,
    quantity int,
    unit_price double,
    discount double,
    revenue double,
    cost double,
    profit double,
    stock_on_hand int,
    reorder_level int,
    lead_time_days int
)
CLUSTERED BY (product_id)
INTO 4 BUCKETS
ROW FORMAT SERDE
'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
    'field.delim'=',',
    'serialization.format'=','
)
STORED AS INPUTFORMAT
'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'hdfs://localhost:9000/user/hive/warehouse/retail_project.db/retail_sales_bucketed'
TBLPROPERTIES (
    'bucketing_version'='2',
    'transient_lastDdlTime'='1789206957'
);
