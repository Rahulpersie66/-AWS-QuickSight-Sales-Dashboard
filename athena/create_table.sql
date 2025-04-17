CREATE EXTERNAL TABLE `dbtest.orders`(
  `row id` bigint, 
  `order id` string, 
  `order date` string, 
  `ship date` string, 
  `ship mode` string, 
  `customer id` string, 
  `customer name` string, 
  `segment` string, 
  `country` string, 
  `city` string, 
  `state` string, 
  `postal code` bigint, 
  `region` string, 
  `product id` string, 
  `category` string, 
  `sub-category` string, 
  `product name` string, 
  `sales` double, 
  `quantity` bigint, 
  `discount` double, 
  `profit` double)
PARTITIONED BY ( 
  `snapshot_day` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\t' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://superstoreanalystbucket/orders/'
TBLPROPERTIES (
  'CrawlerSchemaDeserializerVersion'='1.0', 
  'CrawlerSchemaSerializerVersion'='1.0', 
  'UPDATED_BY_CRAWLER'='test', 
  'areColumnsQuoted'='false', 
  'averageRecordSize'='253', 
  'classification'='csv', 
  'columnsOrdered'='true', 
  'compressionType'='none', 
  'delimiter'='\t', 
  'objectCount'='2', 
  'partition_filtering.enabled'='true', 
  'recordCount'='17', 
  'sizeKey'='4574', 
  'skip.header.line.count'='1', 
  'typeOfData'='file')
