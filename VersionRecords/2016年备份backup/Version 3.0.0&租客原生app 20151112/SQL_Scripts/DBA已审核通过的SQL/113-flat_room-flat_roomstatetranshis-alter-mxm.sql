use mogoroomdb;

ALTER TABLE `flat_room`
ADD COLUMN `statusUpdateTime`  datetime NULL COMMENT '房态更新时间' AFTER `availableStatus`,
ADD COLUMN `availableEndTime` datetime  NULL COMMENT '房间占用状态的有效截止时间' AFTER `statusUpdateTime`;

ALTER TABLE `flat_roomstatetranshis`
ADD COLUMN `availableEndTime`  datetime NULL COMMENT '房态转移前的房间占用状态的有效截止时间' AFTER `availableStatus`,
ADD COLUMN `toAvailableEndTime`  datetime NULL COMMENT '房态转移后的房间占用状态的有效截止时间' AFTER `toAvailableStatus`;



