/*
��ӱ�֤����˹���

Source Server         : 192.168.12.188
Source Server Version : 50625
Source Host           : 192.168.12.188:3306
Source Database       : mogodev

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015��9��10�� 13:23:52
Author ��zhegnliangjie
*/

-- ����BS��̨��ֵ��֤�����ݱ�
CREATE TABLE `user_rechangeBalance` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����',
  `landlordId` int(11) DEFAULT NULL COMMENT '����ID',
  `accountNum` varchar(32) DEFAULT NULL COMMENT '�����˻�',
  `balance` decimal(12,2) DEFAULT NULL COMMENT '��ֵ��֤���',
  `createBy` int(11) DEFAULT NULL COMMENT '������',
  `createTime` datetime DEFAULT NULL,
  `verifierStatus` int(1) DEFAULT NULL COMMENT '���״̬��1��ͨ����2����ͨ����',
  `verifierBy` int(11) DEFAULT NULL COMMENT '�����',
  `verifierTime` datetime DEFAULT NULL COMMENT '���ʱ��',
  `verifierIdea` varchar(255) DEFAULT NULL COMMENT '������',
  `updateBy` int(11) DEFAULT NULL COMMENT '������',
  `updateTime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `status` int(1) DEFAULT '1' COMMENT '״̬(0����Ч��1����Ч)',
  PRIMARY KEY (`id`)
);

-- ��ӱ�֤����˹��ܲ˵� 

INSERT INTO `perm_functionInfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) 
VALUES ( '3002711', '��ӱ�֤��', 'landlord/addBalance', '2', '3', '27', '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `perm_functionInfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) 
VALUES ( '3002712', '��˱�֤��', 'landlord/verifyBalance', '3', '3', '27', '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');



