/*  Database name `mogoroomdb` ，小区属性添加电梯数*/
use mogoroomdb;

ALTER TABLE `flat_community_property` ADD COLUMN `elevatorCount`  int(3) NOT NULL DEFAULT 0 COMMENT '电梯数' ; 