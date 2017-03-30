use mogoroomdb;
CREATE TABLE `comm_sysconfig` (
   `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
   `keyName` varchar(128) NOT NULL COMMENT '配置项key、全局唯一',
   `val` varchar(2048) NULL COMMENT '配置项值',
   `groupName` varchar(128)  NULL COMMENT '配置项分组名、便于归类',
   `name` varchar(128) NOT NULL COMMENT '配置项中文名',
   `remark` varchar(256) NULL COMMENT '配置项备注',
   `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
   `updateByType` int(2) NOT NULL COMMENT '更新人类型(参考字典表分组名:userType)',
   `updateBy` int(11) NOT NULL COMMENT '更新人id',
   PRIMARY KEY (`id`)
) ENGINE=InnoDB default charset=utf8mb4 COMMENT='系统配置表';

ALTER TABLE `comm_sysconfig`
ADD COLUMN `extra1`  varchar(128) NULL COMMENT '附加字段1。可根据业务需要填写特定值。' AFTER `updateBy`,
ADD COLUMN `extra2`  varchar(128) NULL COMMENT '附加字段2。可根据业务需要填写特定值。' AFTER `extra1`;
ALTER TABLE `comm_sysconfig`
ADD INDEX `keyName` (`keyName`) ;