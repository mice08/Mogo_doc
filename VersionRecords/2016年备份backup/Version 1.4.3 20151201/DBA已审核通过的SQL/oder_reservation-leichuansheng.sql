/*  Database name `mogoroomdb` ，添加预约来源字段*/
use mogoroomdb;

alter table `oder_reservationorder` 
   add column `channel` varchar(20) NULL COMMENT '预约来源，参考字段表groupName=channel' after `signedEndTime`;