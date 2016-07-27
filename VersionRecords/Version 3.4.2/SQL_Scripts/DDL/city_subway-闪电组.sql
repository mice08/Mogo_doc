/* Database name `mogoroomdb`， 地铁线表添加百度获取的线路名称字段 */
use mogoroomdb;

ALTER TABLE city_subway ADD COLUMN baiduName varchar(20) DEFAULT NULL  COMMENT '百度地铁线名称';

update  city_subway set baiduName=name;