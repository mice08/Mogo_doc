USE mogoroomdb;

/* 增加组织岗位类型 */
ALTER TABLE `orga_position`
ADD COLUMN `orgaPositionType`  varchar(32) NULL COMMENT '组织岗位类型(参考字典表组名:positionType)' AFTER `positionCode`;

/* 增加组织类型/城市编码 */
ALTER TABLE `orga_org`
ADD COLUMN `orgaOrgType`  varchar(32) NULL COMMENT '组织类型(参考字典表组名:orgType)' AFTER `orgCode`,
ADD COLUMN `areaCode`  varchar(8) NULL COMMENT '城市编码(对应city表areaCode字段)' AFTER `orgaOrgType`;

/* 增加城市编码索引 */
ALTER TABLE `city` ADD INDEX (`areaCode`) ;