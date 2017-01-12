use mogoroomdb;
/*调整行政区商圈英文名字段长度*/

ALTER TABLE city_district  MODIFY COLUMN enName VARCHAR(64) COMMENT '英文全称或简称(seo)';
ALTER TABLE city_business_area  MODIFY COLUMN enName VARCHAR(64) COMMENT '英文全称或简称(seo)';