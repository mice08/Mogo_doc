
use mogoroomdb;

-- 房间管理人
ALTER TABLE `flat_room` ADD COLUMN `orgClerk`  int(11) NULL COMMENT '房间管理人' AFTER `alias`;