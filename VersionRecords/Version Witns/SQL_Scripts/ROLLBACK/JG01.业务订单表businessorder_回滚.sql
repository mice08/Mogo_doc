/*业务订单表增加字段*/
USE mogoroomdb;

ALTER TABLE oder_businessorder 
  drop COLUMN `roomId`,
  drop COLUMN `remark`;