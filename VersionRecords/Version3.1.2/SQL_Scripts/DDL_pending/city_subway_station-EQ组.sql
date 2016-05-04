/* Database name `mogoroomdb` , 地铁线、地铁站关系表增加排序字段 */

ALTER TABLE city_subway_station ADD COLUMN sort tinyint(2) DEFAULT NULL COMMENT '地铁站排序';