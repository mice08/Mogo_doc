/*  Database name `mogoroomdb`  更新房源上架时间 */
USE mogoroomdb;

UPDATE flat_room SET putawayTime = createTime WHERE putawayTime = '2015-10-01 00:00:00';

ALTER TABLE flat_room MODIFY COLUMN putawayTime DATETIME DEFAULT NULL COMMENT '上架时间';