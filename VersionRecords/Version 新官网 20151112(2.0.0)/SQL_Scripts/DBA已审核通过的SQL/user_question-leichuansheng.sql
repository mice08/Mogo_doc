/* Database name `mogoroomdb`) �������û������*/
use mogoroomdb;

CREATE TABLE `user_question` (
   `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
   `content` varchar(500) NOT NULL COMMENT '��������',
   `createBy` int(11) DEFAULT NULL COMMENT '������',
   `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
   `type` int(2) DEFAULT NULL COMMENT '�������ͣ�1-�ܱ�����',
   `status` int(1) NOT NULL COMMENT '״̬��1-��Ч��0-��Ч',
   `updateBy` int(11) DEFAULT NULL COMMENT '�޸���',
   `updateTime` datetime DEFAULT NULL COMMENT '�޸�ʱ��',
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���ޱ�';