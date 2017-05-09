/*  Database name `mogoroomdb`  投诉举报菜单权限 */
use mogoroomdb;

-- 意见反馈列表新增字段
ALTER TABLE comm_suggestion
  ADD COLUMN `remark`  VARCHAR(500) NULL COMMENT '备注' AFTER `suggestionType`,
  ADD COLUMN `updateBy` INT(11) NULL COMMENT '更新人' AFTER `remark`,
  ADD COLUMN `updateTime` DATETIME NULL COMMENT '更新时间/处理时间' AFTER `updateBy`;

USE bizd;
ALTER TABLE bizd_landlord_followup
  ADD COLUMN `channel` int(11) NULL COMMENT '来源渠道(参照字典表组名:channel)',
  ADD COLUMN `communicateTime` DATETIME NULL COMMENT '沟通时间';