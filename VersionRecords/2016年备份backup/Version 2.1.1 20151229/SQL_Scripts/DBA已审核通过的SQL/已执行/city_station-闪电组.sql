/*  Database name `mogoroomdb` ��`city_station`���`enName`�ֶ�*/
use mogoroomdb;


alter table  `city_station` 
   add column `enName` varchar(50) NULL COMMENT 'Ӣ��ȫ�ƻ���(seo)' after `updateTime`;