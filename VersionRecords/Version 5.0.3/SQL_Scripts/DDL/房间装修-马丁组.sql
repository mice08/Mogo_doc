/*该表用于房间未出租的原因的相关属性*/
use mogoroomdb;
/*添加装修中标签*/
INSERT INTO `flat_tag` (category,NAME,userId,userType,createTime) 
VALUE (1,'装修中',3102371,0,NOW());

/*房间标签表*/
CREATE TABLE `flat_room_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主健',
  `roomId` int(11) NOT NULL COMMENT '房间ID',
  `tagId` int(11) NOT NULL COMMENT '标签ID(参考flat_tag表)',
  `endTime` datetime DEFAULT NULL COMMENT '结束时间',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `createByType` int(11) NOT NULL COMMENT '创建人类型(参考字典表组名:userType)',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  `updateBy` int(11) NOT NULL COMMENT '修改人',
  `updateByType` int(11) NOT NULL COMMENT '修改人类型(参考字典表组名:userType)',
  `soDoneCode` int(11) NOT NULL COMMENT '操作流水号',
  `status` tinyint(3) NOT NULL DEFAULT '1' COMMENT '1.进行中0.结束',
  `valid` tinyint(3) NOT NULL DEFAULT '1' COMMENT '状态，用于标示该记录是否逻辑删除',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='房间标签表';
