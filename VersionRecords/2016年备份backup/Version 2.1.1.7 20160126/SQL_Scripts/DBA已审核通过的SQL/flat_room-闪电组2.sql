/*  Database name `mogoroomdb` ，房间表的面积修改为非空*/
use mogoroomdb;

alter table `flat_room` 
modify column `area` decimal(12,2) NOT NULL COMMENT '面积';
