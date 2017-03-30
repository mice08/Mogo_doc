/*名单管理表添加备注字段*/
use mogoroomdb;

ALTER TABLE risk_special_list ADD COLUMN `remark` VARCHAR(255) NULL  COMMENT '备注' ;