/*  Database name `mogoroomdb` ，oder_signedorder添加是否发送字段*/
use mogoroomdb;

ALTER TABLE `oder_signedorder`
ADD COLUMN `sendFlag` INT(2) DEFAULT 2  NOT NULL  COMMENT '是否发送 1:未发送 2:已发送',
ADD COLUMN `channel` varchar(20) NULL COMMENT '签约来源（参考字典表groupName=channel）',
ADD COLUMN `soDoneCode` INT(11) NOT NULL DEFAULT 0 COMMENT '业务记录ID，参考comm_business_record表的id';



UPDATE oder_signedorder SET sendFlag = 1 WHERE STATUS IN(7,8);
UPDATE cntr_salecontract SET sendFlag = 1 WHERE turnStrtus IN(1,3);