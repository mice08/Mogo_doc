/*dc数据库dc_order_info表添加字段*/
use dc;
ALTER TABLE `dc`.`dc_order_info`   
  ADD COLUMN `firstOnlinePayRentDeadline` DATE NULL  COMMENT '首次线上支付租金账单的账单日' AFTER `firstOnlinePayRentTime`;