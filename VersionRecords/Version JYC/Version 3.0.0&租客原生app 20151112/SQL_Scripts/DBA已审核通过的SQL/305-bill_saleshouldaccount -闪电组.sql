/*  Database name `mogoroomdb` ，bill_saleshouldaccount表修改索引*/
use mogoroomdb;

ALTER TABLE bill_saleshouldaccount DROP INDEX  unikey_scs;

ALTER TABLE `bill_saleshouldaccount`   
ADD COLUMN `title` VARCHAR(100) NULL COMMENT '账单显示名称',
ADD COLUMN `billType` INT(11) DEFAULT 0  NOT NULL  COMMENT '账务类型，参考账单类型表的billType',
ADD COLUMN `billDtlType` INT(11) DEFAULT 0  NOT NULL  COMMENT '账务明细类型，参考账单明细类型表的billDtlType',
ADD COLUMN `soDoneCode` INT(11) NULL COMMENT '账务类型，参考comm_business_record表的id',
ADD COLUMN `deadline` datetime NOT NULL  COMMENT '付款最后日期';

alter table `bill_saleshouldaccount` add UNIQUE index5 (`signedOrderId`,`billType`,`billDtlType`,`startDate`,`soDoneCode`);
