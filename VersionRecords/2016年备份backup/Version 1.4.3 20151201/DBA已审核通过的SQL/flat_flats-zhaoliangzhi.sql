/*  Database name `mogoroomdb` ，添加房型字段 */
use mogoroomdb;

ALTER TABLE `flat_flats` 
ADD COLUMN `protoType` INT(11) NOT NULL DEFAULT 0 COMMENT '0：不存在房型的房源 >0：存在模板的房源所对应房型的编号；' AFTER `unit`;