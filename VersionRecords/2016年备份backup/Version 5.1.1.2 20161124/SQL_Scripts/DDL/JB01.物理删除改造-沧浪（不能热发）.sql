/*物理删除改造*/
use mogoroomdb;

ALTER TABLE `bill_account_mapping`ADD COLUMN `valid`  tinyint(1) NOT NULL DEFAULT 1 COMMENT '有效标识 0:无效 1:有效' AFTER `orderId`;
ALTER TABLE `orde_signedorder_landlord`ADD COLUMN `valid`  tinyint(1) NOT NULL DEFAULT 1 COMMENT '有效标识 0:无效 1:有效' AFTER `status`;
ALTER TABLE `cntr_flat_furniture`ADD COLUMN `valid`  tinyint(1) NOT NULL DEFAULT 1 COMMENT '有效标识 0:无效 1:有效' AFTER `orderSeq`;
ALTER TABLE `cntr_room_furniture`ADD COLUMN `valid`  tinyint(1) NOT NULL DEFAULT 1 COMMENT '有效标识 0:无效 1:有效' AFTER `orderSeq`;
