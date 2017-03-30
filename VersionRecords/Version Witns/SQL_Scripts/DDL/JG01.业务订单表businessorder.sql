/*业务订单表增加字段*/
USE mogoroomdb;

ALTER TABLE oder_businessorder 
  ADD COLUMN `roomId` INT (11) NULL COMMENT '房间Id',
  ADD COLUMN `remark` VARCHAR (128) NULL COMMENT '备注';