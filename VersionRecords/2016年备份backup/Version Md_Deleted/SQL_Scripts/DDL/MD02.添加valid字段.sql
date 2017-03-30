use mogoroomdb;

/* 添加是否有效字段 */

ALTER TABLE perm_landlord_menu ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';
ALTER TABLE perm_landlord_menu_his ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

