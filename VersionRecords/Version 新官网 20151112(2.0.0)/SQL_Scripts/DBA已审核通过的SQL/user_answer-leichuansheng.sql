/* Database name `mogoroomdb`) �������û��𰸱�*/
use mogoroomdb;

CREATE TABLE `user_answer` (
   `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
   `questionId` int(11) NOT NULL COMMENT '����Id',
   `renterId` int(11) NOT NULL COMMENT '���Id',
   `answer` varchar(500) NOT NULL COMMENT '��',
   `createTime` datetime DEFAULT NULL COMMENT '����ʱ��',
   `createBy` int(11) DEFAULT NULL COMMENT '������',
   `updateTime` datetime DEFAULT NULL COMMENT '�޸�ʱ��',
   `updateBy` int(11) DEFAULT NULL COMMENT '�޸���',
   PRIMARY KEY (`id`),
   KEY `FK_Reference_7` (`questionId`),
   CONSTRAINT `FK_Reference_7` FOREIGN KEY (`questionId`) REFERENCES `user_question` (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�ܱ����⼰��';