/*oder_signedorder表添加是否已结账字段*/
USE mogoroomdb;

ALTER TABLE oder_signedorder add column acctFinished  tinyint(1) default 0 COMMENT '是否已结账(0:未结账 1:已结账)';  

ALTER TABLE oder_signedorder_his add column acctFinished  tinyint(1) default 0 COMMENT '是否已结账(0:未结账 1:已结账)';  