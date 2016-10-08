/*该表用于房间未出租的原因的相关属性*/
use mogoroomdb;

/*房间未出租状态表*/
CREATE TABLE `flat_room_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主健',
  `roomId` int(11) NOT NULL COMMENT '房间id',
  `status` tinyint(3) NOT NULL COMMENT '1.进行中 2.结束 ',
  `beginTime` datetime NOT NULL COMMENT '开始时间',
  `createTime` datetime NOT NULL COMMENT '创建日期',
  `createByType` int(11) NOT NULL COMMENT '创建人类型(参考字典表组名:userType)',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  `updateBy` int(11) NOT NULL COMMENT '修改人',
  `updateByType` int(11) NOT NULL COMMENT '修改人类型(参考字典表组名:userType)',
  `soDoneCode` int(11) NOT NULL COMMENT '操作流水号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='房间状态：如装修';

/*房间未出租状态历史表 */
CREATE TABLE `flat_room_status_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主健',
  `roomId` int(11) NOT NULL COMMENT '房间id',
  `type` tinyint(4) DEFAULT NULL COMMENT '1.装修',
  `status` tinyint(3) NOT NULL COMMENT '1.进行中 2.结束 ',
  `beginTime` datetime NOT NULL COMMENT '开始时间',
  `endTime` datetime DEFAULT NULL COMMENT '结束时间',
  `createTime` datetime NOT NULL COMMENT '创建日期',
  `createByType` int(11) NOT NULL COMMENT '创建人类型(参考字典表组名:userType)',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  `updateBy` int(11) NOT NULL COMMENT '修改人',
  `updateByType` int(11) NOT NULL COMMENT '修改人类型(参考字典表组名:userType)',
  `soDoneCode` int(11) NOT NULL COMMENT '操作流水号',
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='房间状态历史表';
