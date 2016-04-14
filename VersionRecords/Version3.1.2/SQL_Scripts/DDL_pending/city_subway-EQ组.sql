/*  Database name `mogoroomdb` ，地铁线表增加colorStyle字段用来在地图上标识出不同的颜色*/
use mogoroomdb;


ALTER TABLE city_subway ADD COLUMN color VARCHAR(20) DEFAULT NULL COMMENT '地铁线颜色';