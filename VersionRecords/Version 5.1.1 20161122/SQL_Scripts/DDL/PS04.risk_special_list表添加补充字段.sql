/*risk_special_list表添加补充字段*/

use mogoroomdb;

ALTER TABLE `risk_special_list`   
  ADD COLUMN `updateDesc` VARCHAR(50) NULL  COMMENT '修改原因' AFTER `updateByType`,
  CHANGE `valid` `valid` TINYINT(1) DEFAULT 1  NOT NULL  COMMENT '数据状态(0:无效 1:有效)',
  ADD COLUMN `status` INT(1) NULL  COMMENT '名单状态(0:失效 1:生效)' AFTER `valid`,
  ADD COLUMN `validCycle` INT(4) NULL  COMMENT '生效周期,单位月' AFTER `remark`,
  ADD COLUMN `validTime` DATE NULL  COMMENT '生效时间' AFTER `validCycle`,
  ADD COLUMN `expectInvalidTime` DATE NULL  COMMENT '预计失效时间' AFTER `validTime`,
  ADD COLUMN `InvalidTime` DATE NULL  COMMENT '实际失效时间' AFTER `expectInvalidTime`;