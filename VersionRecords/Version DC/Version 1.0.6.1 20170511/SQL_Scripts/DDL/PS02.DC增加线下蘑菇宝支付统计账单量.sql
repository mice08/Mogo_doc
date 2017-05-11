use dc;

/*dc库相关表添加统计字段*/
ALTER TABLE `dc`.`dc_land_stat_inc_day`
ADD COLUMN `offlinePayMogobaoRentCount`  int(6) NULL COMMENT '线下支付蘑菇宝租金账单量' AFTER `offlinePayRentAmount`,
ADD COLUMN `offlinePayMogobaoRentAmount`  decimal(10,2) NULL COMMENT '线下支付蘑菇宝租金账单金额' AFTER `offlinePayMogobaoRentCount`;