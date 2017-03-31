/*  Database name `mogoroomdb` ，添加房源类型字段 */
use mogoroomdb;

ALTER TABLE `flat_flats` 
ADD COLUMN `flatsTag` INT(11) NOT NULL DEFAULT 1 COMMENT '房源类型 1：分散式，2：集中式';