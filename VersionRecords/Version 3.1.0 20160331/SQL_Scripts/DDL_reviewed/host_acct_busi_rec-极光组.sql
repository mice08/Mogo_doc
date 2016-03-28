/*  Database name `mogoroomdb` ，添加业主和房源关系表ID字段*/
use mogoroomdb;
 
ALTER TABLE `host_acct_busi_rec` ADD column hostFlatRelId INT(11) NOT NULL COMMENT '业主和房源关系表ID' AFTER id;