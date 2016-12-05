/*  Database name `mogoroomdb` ，为账单修改remark长度*/
use mogoroomdb;

ALTER TABLE bill_saleshouldaccount MODIFY COLUMN remark VARCHAR(256) COLLATE utf8_bin DEFAULT NULL COMMENT '备注';
ALTER TABLE bill_salebill MODIFY COLUMN remark VARCHAR(256) COLLATE utf8_bin DEFAULT NULL COMMENT '备注';