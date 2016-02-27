/* Database name `mogoroomdb` ，新官网需要的SEO针对城市增加字段，第二条是数据初始化 */
use mogoroomdb;

ALTER TABLE city_business_area ADD column enName VARCHAR(30) COMMENT '英文全称或简称(seo)';

UPDATE city_business_area t SET enName = CONCAT('sh','_',t.`districtId`,'_',t.id) WHERE t.`districtId` BETWEEN 2 AND 19;

