
use mogoroomdb;

-- ���������
ALTER TABLE `flat_room` ADD COLUMN `roomManagerId`  int(11) NULL COMMENT '���������' AFTER `alias`;