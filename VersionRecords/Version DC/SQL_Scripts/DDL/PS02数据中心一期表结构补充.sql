
/*后续修改，添加更新时间字段*/

use dc;

ALTER TABLE `dc`.`dc_order_info`   
  ADD COLUMN `updateTime` DATETIME NULL  COMMENT '更新时间' AFTER `allOnlinePayRentAmount`;
  
ALTER TABLE `dc`.`dc_land_dtl_real`   
  ADD COLUMN `updateTime` DATETIME NULL  COMMENT '更新时间' AFTER `mogoScore`;