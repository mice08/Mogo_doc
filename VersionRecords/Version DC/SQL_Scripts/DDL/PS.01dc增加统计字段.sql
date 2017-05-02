/*新增dc统计字段*/
USE dc;       

ALTER TABLE `dc`.`dc_land_stat_inc_day`   ADD COLUMN `TPReservationCount` INT(6) NULL  COMMENT 'TP预约单量';
ALTER TABLE `dc`.`dc_land_stat_inc_day`   ADD COLUMN `allCallCount` INT(6) NULL  COMMENT '400电话拨打量';
ALTER TABLE `dc`.`dc_land_stat_inc_day`   ADD COLUMN `answedCallCount` INT(6) NULL  COMMENT '400电话接听量';
ALTER TABLE `dc`.`dc_land_stat_inc_day`   ADD COLUMN `callRenterCount` INT(6) NULL  COMMENT '获客数量';

ALTER TABLE `dc`.`dc_land_stat_total_day`   ADD COLUMN `allCallCount` INT(6) NULL  COMMENT '400电话拨打量';
ALTER TABLE `dc`.`dc_land_stat_total_day`   ADD COLUMN `answedCallCount` INT(6) NULL  COMMENT '400电话接听量';
ALTER TABLE `dc`.`dc_land_stat_total_day`   ADD COLUMN `callRenterCount` INT(6) NULL  COMMENT '获客数量';