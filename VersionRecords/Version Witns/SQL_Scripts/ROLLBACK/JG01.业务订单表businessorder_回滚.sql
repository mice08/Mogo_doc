/*业务订单表增加字段*/
USE mogoroomdb;

ALTER TABLE oder_businessorder 
  DROP COLUMN `acctId`,
  DROP COLUMN `roomId`,
  DROP COLUMN `remark`;