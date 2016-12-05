/*  Database name `mogoroomdb` ，supp_repair增加字段*/
use mogoroomdb;

ALTER TABLE  `supp_repair`   
  ADD COLUMN `orderId` INT(11) NULL   COMMENT '订单ID' AFTER `renterId`,
  ADD COLUMN `orderType` tinyint(2) NULL   COMMENT '订单类型(参考字典表组名:orderType)' AFTER `orderId`;

ALTER TABLE  `supp_complain`   
  ADD COLUMN `orderId` INT(11) NULL   COMMENT '订单ID' AFTER `renterId`,
  ADD COLUMN `orderType` tinyint(2) NULL   COMMENT '订单类型(参考字典表组名:orderType)' AFTER `orderId`;
