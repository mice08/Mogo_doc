/*添加帐务账单表创建人类型字段*/
USE mogoroomdb;

ALTER TABLE acct.`acct_bill` 
ADD COLUMN createByType TINYINT(4) DEFAULT NULL COMMENT '创建人类型';