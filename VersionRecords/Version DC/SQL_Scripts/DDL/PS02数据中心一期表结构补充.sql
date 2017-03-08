
/*后续修改，添加更新时间字段*/

use dc;

ALTER TABLE `dc`.`dc_order_info`   
  ADD COLUMN `updateTime` DATETIME NULL  COMMENT '更新时间' AFTER `allOnlinePayRentAmount`;
  
ALTER TABLE `dc`.`dc_land_dtl_real`   
  ADD COLUMN `updateTime` DATETIME NULL  COMMENT '更新时间' AFTER `mogoScore`;

ALTER TABLE `dc`.`dc_land_dtl_real`   
  CHANGE `serviceSectorId` `serviceSectorId` INT(11) NULL  COMMENT '服务人部门id',
  CHANGE `serviceSectorName` `serviceSectorName` VARCHAR(50) NULL  COMMENT '服务人部门名称';