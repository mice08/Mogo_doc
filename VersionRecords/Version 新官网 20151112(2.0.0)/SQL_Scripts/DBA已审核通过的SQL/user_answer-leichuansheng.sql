/* Database name `mogoroomdb`) ，创建用户答案表*/
use mogoroomdb;

CREATE TABLE `user_answer` (
   `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
   `questionId` int(11) NOT NULL COMMENT '问题Id',
   `renterId` int(11) NOT NULL COMMENT '租客Id',
   `answer` varchar(500) NOT NULL COMMENT '答案',
   `createTime` datetime DEFAULT NULL COMMENT '创建时间',
   `createBy` int(11) DEFAULT NULL COMMENT '创建人',
   `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
   `updateBy` int(11) DEFAULT NULL COMMENT '修改人',
   PRIMARY KEY (`id`),
   KEY `FK_Reference_7` (`questionId`),
   CONSTRAINT `FK_Reference_7` FOREIGN KEY (`questionId`) REFERENCES `user_question` (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='密保问题及答案';