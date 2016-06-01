/*  Database name `mogoroomdb` ，新建一张房源评分表，且在字典表初始化评分类型*/
use mogoroomdb;

create table `flat_room_grade`( 
   `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', 
   `roomId` int(11) NOT NULL COMMENT '房间Id', 
   `gradeType` tinyint(2) NOT NULL COMMENT '评分类型(参考字典表组名:roomGradeType)', 
   `grade` decimal(10,2) NOT NULL COMMENT '分数', 
   `createBy` int(11) NOT NULL COMMENT '创建人', 
   `createType` tinyint(5) NOT NULL COMMENT '创建人类型(参考字典表组名:userType)', 
   `createTime` datetime NOT NULL COMMENT '创建时间', 
   `updateBy` int(11) COMMENT '修改人', 
   `updateType` tinyint(5) COMMENT '修改人类型(参考字典表组名:userType)', 
   `updateTime` datetime COMMENT '修改时间', 
    PRIMARY KEY (`id`)
 )  ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='房源评分表';