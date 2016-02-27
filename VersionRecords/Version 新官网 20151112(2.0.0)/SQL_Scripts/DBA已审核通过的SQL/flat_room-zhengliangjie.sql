/*  Database name `mogoroomdb` ，修改房间描述长度*/ 
use mogoroomdb; 
ALTER TABLE `flat_room`
MODIFY COLUMN `intro`  varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间描述' AFTER `remark`;

ALTER TABLE `flat_room_prototype`
MODIFY COLUMN `intro`  varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房型介绍' AFTER `remark`;
