use mogoroomdb;

CREATE TABLE `comm_sysconfig_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `keyName` varchar(128) NOT NULL COMMENT '配置项key、全局唯一',
  `val` varchar(2048) DEFAULT NULL COMMENT '变更前配置项值',
   newVal varchar(2048) DEFAULT NULL COMMENT '变更后配置项值',
   
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createByType` int(2) NOT NULL COMMENT '创建人类型(参考字典表分组名:userType)',
  `createBy` int(11) NOT NULL COMMENT '创建人id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='系统配置变更履历';


ALTER TABLE `comm_sysconfig_his`
ADD INDEX `keyName` (`keyName`) ;



