use mogoroomdb;

/* 添加图片等级字段 */
ALTER TABLE flat_room_picture ADD COLUMN picLevel tinyint(1) NULL COMMENT '图片等级(0:标清 1:高清)';