
/*risk_special_list表添加补充字段*/

use mogoroomdb;

ALTER TABLE `risk_special_list`   
  ADD COLUMN `updateDesc` VARCHAR(50) NULL  COMMENT '修改原因' AFTER `updateByType`,
  ADD COLUMN `validCycle` INT(4) NULL  COMMENT '生效周期,单位月' AFTER `remark`,
  ADD COLUMN `validTime` DATE NULL  COMMENT '生效时间' AFTER `validCycle`,
  ADD COLUMN `invalidTime` DATE NULL  COMMENT '失效时间' AFTER `validTime`;
