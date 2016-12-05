/*  Database name `mogoroomdb` ，`city_station`添加`enName`字段*/
use mogoroomdb;


alter table  `city_station` 
   add column `enName` varchar(50) NULL COMMENT '英文全称或简称(seo)' after `updateTime`;