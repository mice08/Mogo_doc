create table `flat_room_score`( 
   `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '积分ID', 
   `roomId` int(11) NOT NULL COMMENT '房间ID', 
   `userExp` int(6) NOT NULL COMMENT '用户体验', 
   `costPerf` int(6) NOT NULL COMMENT '性价比', 
   `vacantDegree` int(6) NOT NULL COMMENT '空置程度', 
   `willBeOnline` int(6) NOT NULL COMMENT '预计上线', 
   `landlordCredit` int(6) NOT NULL COMMENT '房东信誉', 
   `createBy` int(11) NOT NULL COMMENT '创建人', 
   `createByType` int(2) NOT NULL COMMENT '创建人类型(参考字典表groupName=userType)', 
   `createTime` datetime NOT NULL DEFAULT current_timestamp COMMENT '创建时间', 
   `updateBy` int(11) COMMENT '修改人', 
   `updateByType` int(2) COMMENT '修改人类型(参考字典表groupName=userType)', 
   `updateTime` datetime COMMENT '修改时间', 
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='房源评分表';