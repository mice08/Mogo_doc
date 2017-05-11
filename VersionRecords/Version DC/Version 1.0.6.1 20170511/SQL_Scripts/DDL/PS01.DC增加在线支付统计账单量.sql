use dc;

/*dc库相关表添加统计字段*/
ALTER TABLE `dc`.`dc_land_stat_inc_day`   
  CHANGE `onlinePayRentCount` `onlinePayRentCount` INT(6) NULL  COMMENT '在线支付租金账单量'  AFTER `onlinePayCustomBillCount`,
  CHANGE `firstOnlinePayRentCount` `firstOnlinePayRentCount` INT(6) NULL  COMMENT '首次在线支付租金量'  AFTER `onlinePayRentCount`,
  CHANGE `inAmount` `inAmount` DECIMAL(10,2) NULL  COMMENT '总收入'  AFTER `firstOnlinePayRentCount`,
  ADD COLUMN `onlinePayRentAmount` DECIMAL(10,2) NULL  COMMENT '在线支付租金账单金额' AFTER `onlinePayRentCount`,
  ADD COLUMN `onlinePayCustomeAmount` DECIMAL(10,2) NULL  COMMENT '在线支付自定义账单金额' AFTER `onlinePayCustomBillCount`,
  ADD COLUMN `offlinePayRentCount`  int(6) NULL DEFAULT NULL COMMENT '线下支付租金账单量' AFTER `onlinePayRentAmount`,
  ADD COLUMN `offlinePayRentAmount`  decimal(10,2) NULL DEFAULT NULL COMMENT '线下支付租金账单金额' AFTER `offlinePayRentCount`;