/*  Database name `mogoroomdb`  增加tp房源资质标签表*/
use mogoroomdb;
/*
1、预估表容量:所有tp房源数量/每月（先tp房间1000间，后面会有所增长）
2、每次读取量:小于500
3、主要查询
select id, roomId, tagId, isAuto, createBy, createByType,createTime, updateTime, updateBy, updateByType
where landlordId=123 and tagId=123 and valid=1 and status=1;
*/
CREATE TABLE `flat_power_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主健',
  `roomId` int(11) NOT NULL COMMENT '房间ID',
  `landlordId` int(11) NOT NULL COMMENT '房东ID',
  `tagId` int(11) NOT NULL COMMENT '标签ID(参考flat_tag表)',
  `yearMonth` int(11) NOT NULL COMMENT '年月',
  `isAuto` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否系统添加(1:是 0:否)',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(1:有效 0:无效)',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `createByType` int(11) NOT NULL COMMENT '创建人类型(参考字典表组名:userType)',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  `updateBy` int(11) NOT NULL COMMENT '修改人',
  `updateByType` int(11) NOT NULL COMMENT '修改人类型(参考字典表组名:userType)',
  `soDoneCode` int(11) NOT NULL COMMENT '操作流水号',
  `valid` tinyint(1) NOT NULL DEFAULT '1' COMMENT '数据状态(1:有效 0:删除)',
  PRIMARY KEY (`id`),
  KEY `INX_ROOMID` (`roomId`),
  KEY `INX_LANDLORDID` (`landlordId`),
  KEY `INX_TAGID` (`tagId`),
  KEY `INX_YEARMONTH` (`yearMonth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='tp房源资质标签表';

