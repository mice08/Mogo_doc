/*业务订单表loan_businessorder表新增roomId、remark字段*/
USE mogoroomdb;

ALTER TABLE loan_businessorder 
  ADD COLUMN `roomId` INT (11) NULL COMMENT '房间Id',
  ADD COLUMN `remark` VARCHAR (128) NULL COMMENT '备注';