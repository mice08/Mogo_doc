use mogoroomdb;
/*
新建tp房源资质标签表
*/
CREATE TABLE `flat_power_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主健',
  `roomId` int(11) NOT NULL COMMENT '房间ID',
  `tagId` int(11) NOT NULL COMMENT '标签ID(参考flat_tag表)',
  `isAuto` tinyint(3) NOT NULL DEFAULT '1' COMMENT '是不是系统添加(1:是 0:否)',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `createByType` int(11) NOT NULL COMMENT '创建人类型(参考字典表组名:userType)',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  `updateBy` int(11) NOT NULL COMMENT '修改人',
  `updateByType` int(11) NOT NULL COMMENT '修改人类型(参考字典表组名:userType)',
  `soDoneCode` int(11) NOT NULL COMMENT '操作流水号',
  `valid` tinyint(3) NOT NULL DEFAULT '1' COMMENT '数据状态(1:有效 0:删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='tp房源资质标签表';


/*添加tp当月和次月展示房源标签*/
INSERT INTO `flat_tag` (category,NAME,userId,userType,createTime) 
VALUE (1,'当月',92158,0,NOW());
INSERT INTO `flat_tag` (category,NAME,userId,userType,createTime) 
VALUE (1,'次月',92158,0,NOW());

