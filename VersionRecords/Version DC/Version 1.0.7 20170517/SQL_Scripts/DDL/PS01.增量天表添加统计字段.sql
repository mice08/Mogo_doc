use dc;

ALTER TABLE `dc`.`dc_land_stat_inc_day`   
  ADD COLUMN `inAmountZhifubao` DECIMAL(10,2) NULL  COMMENT '支付宝总收入' AFTER `callRenterCount`,
  ADD COLUMN `inAmountWeixin` DECIMAL(10,2) NULL  COMMENT '微信总收入' AFTER `inAmountZhifubao`;
