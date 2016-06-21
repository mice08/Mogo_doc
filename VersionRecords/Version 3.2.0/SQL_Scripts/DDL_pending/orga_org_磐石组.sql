/* Database name `mogoroomdb`， 组织结构表添加cityId字段 */
use mogoroomdb;

ALTER TABLE `orga_org`  ADD COLUMN `cityId`  int(11)  NULL  COMMENT '城市ID' ;