/*  Database name `mogoroomdb` ，新建一张房源评分表，且在字典表初始化评分类型*/
use mogoroomdb;

create table `flat_room_grade`( 
   `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', 
   `roomId` int(11) NOT NULL COMMENT '房间Id', 
   `gradeType` tinyint(2) NOT NULL COMMENT '评分类型(参考字典表组名:gradeType)', 
   `grade` decimal(10,2) NOT NULL COMMENT '分数', 
   `createBy` int(11) NOT NULL COMMENT '创建人', 
   `createType` tinyint(5) NOT NULL COMMENT '创建人类型(参考字典表组名:userType)', 
   `createTime` datetime NOT NULL COMMENT '创建时间', 
   `updateBy` int(11) COMMENT '修改人', 
   `updateType` tinyint(5) COMMENT '修改人类型(参考字典表组名:userType)  ', 
   `updateTime` datetime COMMENT '修改时间', 
    PRIMARY KEY (`id`)
 )  ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='房源评分表';

INSERT INTO comm_dictionary(code,groupName,sort,keyPro,value,status,enValue)VALUES('gradeType-1','gradeType','1','1','精品房源','1','RoomLevel');
INSERT INTO comm_dictionary(code,groupName,sort,keyPro,value,status,enValue)VALUES('gradeType-2','gradeType','2','2','房间图片数量','1','RoomPictureCount');
INSERT INTO comm_dictionary(code,groupName,sort,keyPro,value,status,enValue)VALUES('gradeType-3','gradeType','3','3','房东认证','1','LandlordQualification');
INSERT INTO comm_dictionary(code,groupName,sort,keyPro,value,status,enValue)VALUES('gradeType-4','gradeType','4','4','房间面积','1','RoomArea');
INSERT INTO comm_dictionary(code,groupName,sort,keyPro,value,status,enValue)VALUES('gradeType-5','gradeType','5','5','房间价格','1','RoomPrice');