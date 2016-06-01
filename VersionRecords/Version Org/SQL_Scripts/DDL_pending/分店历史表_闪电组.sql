
use mogoroomdb;
drop  table orga_org_his;
CREATE TABLE `orga_org_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `orgId` int(11) NOT NULL COMMENT '组织表id',
  `parentId` int(11) DEFAULT NULL COMMENT '上级组织id',
  `thirdId` int(20) DEFAULT NULL COMMENT '第三方系统的关联组织id',
  `orgName` varchar(50) DEFAULT NULL COMMENT '组织名称',
  `shortName` varchar(50) DEFAULT NULL COMMENT '组织简称',
  `orgCode` varchar(10) DEFAULT NULL COMMENT '组织编码',
  `level` tinyint(2) DEFAULT NULL COMMENT '组织层级',
  `fullPath` varchar(50) DEFAULT NULL COMMENT '组织路径',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态(0:无效 1:有效)',
  `sort` tinyint(2) DEFAULT NULL COMMENT '组织排序',
  `orgType` tinyint(2) DEFAULT NULL COMMENT '类型(参考groupName=UserType)',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createByType` tinyint(2) DEFAULT NULL COMMENT '创建人类型(参照groupName=userType)',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `updateByType` tinyint(2) DEFAULT NULL COMMENT '更新人类型(参照groupName=userType)',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `soDoneCode` int(11) unsigned DEFAULT NULL COMMENT '对应common_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  `isSynch` tinyint(1) DEFAULT null COMMENT '是否同步到钉钉(1:是 0:否)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='组织架构历史表';

drop  table orga_org_position_his;
CREATE TABLE `orga_org_position_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `mapId` int(11) NOT NULL COMMENT '用户岗位关系表id',
  `userId` int(11) DEFAULT NULL COMMENT '用户id',
  `orgId` int(11) DEFAULT NULL COMMENT '组织id',
  `positionId` int(11) DEFAULT NULL COMMENT '岗位ID',
  `label` varchar(20) DEFAULT NULL COMMENT '标签',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态(0:无效 1:有效)',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人ID',
  `createByType` int(1) DEFAULT NULL COMMENT '创建人类型(参照groupName=userType)',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人ID',
  `updateByType` int(1) DEFAULT NULL COMMENT '更新人类型(参照groupName=userType)',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `soDoneCode` int(11) unsigned DEFAULT NULL COMMENT '对应common_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户组织岗位关系历史表';



