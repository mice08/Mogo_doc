/*  Database name `mogoroomdb`  增加tp免押金房源*/
use mogoroomdb;
/*
1、预估表容量:所有tp房源数量/每月（先tp房间1000间，后面会有所增长）
2、每次读取量:小于500
3、主要查询
select id, roomId, tagId, isAuto, createBy, createByType,createTime, updateTime, updateBy, updateByType from flat_power_exemptdeposit
where landlordId=123 and ''>=beginTime and ''<endTime and valid=1;
*/
CREATE TABLE `flat_power_freeforegift` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主健',
  `roomId` int(11) NOT NULL COMMENT '房间ID',
  `landlordId` int(11) NOT NULL COMMENT '房东ID',
  `beginTime` datetime NOT NULL COMMENT '创建时间',
  `endTime` datetime NOT NULL DEFAULT '2099-01-01 00:00:00' COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `createByType` int(11) NOT NULL COMMENT '创建人类型(参考字典表组名:userType)',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP COMMENT '修改时间',
  `updateBy` int(11) NOT NULL COMMENT '修改人',
  `updateByType` int(11) NOT NULL COMMENT '修改人类型(参考字典表组名:userType)',
  `soDoneCode` int(11) NOT NULL COMMENT '操作流水号',
  `valid` tinyint(1) NOT NULL DEFAULT '1' COMMENT '数据状态(1:有效 0:删除)',
  PRIMARY KEY (`id`),
  KEY `INX_ROOMID` (`roomId`),
  KEY `INX_LANDLORDID` (`landlordId`),
  KEY `INX_BEGINTIME_ENDTIME` (`beginTime`,`endTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='tp房源资质标签表';

