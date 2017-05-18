 /*新增风控帐号及类型字段*/
USE mogoroomdb;
     
ALTER TABLE risk_landlord_level ADD COLUMN account varchar(100) NULL  COMMENT '支付帐号';
ALTER TABLE risk_landlord_level ADD COLUMN accountsType varchar(50) NULL  COMMENT '帐号类型(参考字典表组名:groupName=paymentAccount)';