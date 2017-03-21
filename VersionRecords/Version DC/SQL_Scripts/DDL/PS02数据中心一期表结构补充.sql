
/*后续修改，添加更新时间字段*/

use dc;

ALTER TABLE `dc`.`dc_order_info`   
  ADD COLUMN `updateTime` DATETIME NULL  COMMENT '更新时间' AFTER `allOnlinePayRentAmount`;
  
ALTER TABLE `dc`.`dc_land_dtl_real`   
  ADD COLUMN `updateTime` DATETIME NULL  COMMENT '更新时间' AFTER `mogoScore`;

ALTER TABLE `dc`.`dc_land_dtl_real`   
  CHANGE `serviceSectorId` `serviceSectorId` INT(11) NULL  COMMENT '服务人部门id',
  CHANGE `serviceSectorName` `serviceSectorName` VARCHAR(50) NULL  COMMENT '服务人部门名称';


ALTER TABLE `dc`.`dc_land_dtl_real`   
  ADD COLUMN `status` INT(2) NULL  COMMENT '房东状态' AFTER `updateTime`;


ALTER TABLE `dc`.`dc_land_stat_inc_day`   
  CHANGE `roomCount` `centRoomCount` INT(6) NULL  COMMENT '新增集中式房源量',
  ADD COLUMN `deceRoomCount` INT(6) NULL  COMMENT '新增分散式房源量' AFTER `centRoomCount`,
  ADD COLUMN `inAmount` DECIMAL(10,2) NULL  COMMENT '总收入' AFTER `onlinePayRentCount`,
  ADD COLUMN `outAmount` DECIMAL(10,2) NULL  COMMENT '总支出' AFTER `inAmount`,
  ADD COLUMN `rentAmount` DECIMAL(10,2) NULL  COMMENT '租金费用收入(不区分线上线下)' AFTER `outAmount`,
  ADD COLUMN `otherAmount` DECIMAL(10,2) NULL  COMMENT '其他费用收入(不区分线上线下)' AFTER `rentAmount`,
  ADD COLUMN `reservationCount` INT(6) NULL  COMMENT '新增预约量' AFTER `otherAmount`,
  ADD COLUMN `bookCount` INT(6) NULL  COMMENT '新增预订量' AFTER `reservationCount`;


ALTER TABLE `dc`.`dc_land_stat_inc_month`   
  ADD COLUMN `vacantDays` INT(4) NULL  COMMENT '空置天数' AFTER `offlinePayRentCount`;


ALTER TABLE `dc`.`dc_land_stat_total_day`   
  CHANGE `RentRoomCount` `centRoomRentCount` INT(8) NULL  COMMENT '集中式已租房源量',
  ADD COLUMN `deceRoomRentCount` INT(8) NULL  COMMENT '分散式已租房源量' AFTER `centRoomRentCount`;

ALTER TABLE `dc`.`dc_order_info`   
  CHANGE `firstOnlinePayTime` `firstOnlinePayRentTime` DATETIME NULL  COMMENT '首次线上支付租金时间';

ALTER TABLE `dc`.`dc_land_stat_inc_month`   
  ADD COLUMN `valid` TINYINT(1) NULL  COMMENT '是否有效(1:有效 0:无效)' AFTER `vacantDays`;

ALTER TABLE `dc`.`dc_order_info`   
  ADD COLUMN `allOnlinePayRentCount` INT(4) NULL  COMMENT '在线支付租金(不包括蘑菇宝常规款)笔数' AFTER `allOnlinePayRentAmount`;

ALTER TABLE `dc`.`dc_land_stat_total_day`   
  CHANGE `noRentRoomCount` `centNoRentRoomCount` INT(8) NULL  COMMENT '集中式未租房源量',
  ADD COLUMN `deceNoRentRoomCount` INT(8) NULL  COMMENT '分散式未租房源量' AFTER `centNoRentRoomCount`,
  ADD COLUMN `operateSignCount` INT(8) NULL  COMMENT '运营统计签约量' AFTER `onlinePayRentCount`;

ALTER TABLE `dc`.`dc_order_info`   
  ADD  INDEX `confirmDate` (`confirmDate`),
  ADD  INDEX `firstOnlinePayRentTime` (`firstOnlinePayRentTime`);

ALTER TABLE `dc`.`dc_land_dtl_real`   
  ADD  INDEX `servicePersonId` (`servicePersonId`),
  ADD  INDEX `serviceSectorId` (`serviceSectorId`),
  ADD  INDEX `serviceAreaId` (`serviceAreaId`);