/*
�޸�ͼƬ����

Source Server         : 192.168.12.188
Source Server Version : 50625
Source Host           : 192.168.12.188:3306
Source Database       : mogodev

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015��9��7�� 17:35:43
Author ��zhegnliangjie
*/

-- ���ͼƬ���״̬���Լ�ͼƬ�ϴ���Դ
 -- ALTER TABLE `flat_room_picture`
 -- ADD COLUMN `description`  varchar(255) NULL COMMENT 'ͼƬ����' AFTER `verifyIdea`,
 -- ADD COLUMN `innerImageType`  int(11) NULL  COMMENT '��Ԣ�ڵ�ͼƬ���ͣ������ֵ��' AFTER `description`,
 -- ADD COLUMN `sequences`  int(11) NULL DEFAULT 1 COMMENT '����' AFTER `innerImageType`;

 ALTER TABLE `flat_room_picture`
 CHANGE COLUMN `picOrigin` `channel`  int(1) NULL DEFAULT 1 COMMENT 'ͼƬ��Դ��������Դö��' AFTER `verifyStatus`;

-- �������ӹ�Ԣ�����ֶ�
-- ALTER TABLE `flat_room`
-- ADD COLUMN `picDescribe`  varchar(500) NULL COMMENT '��ԢͼƬ����' AFTER `salePrice2`;

-- ��ʼ�����
-- �޸ĳ�ʼͼƬ����
UPDATE  flat_room_picture set innerImageType =0 where imageType like 'image_room%';
UPDATE  flat_room_picture set innerImageType =7 where imageType like 'image_com%' ;
UPDATE  flat_room_picture set innerImageType =9 where imageType like 'image_fl%' ;

-- �޸ĳ�ʼͼƬĬ��Ϊ���ͨ��
UPDATE  flat_room_picture set verifyStatus =2;
-- �޸�Ĭ��ͼƬ��Դ
UPDATE  flat_room_picture set channel =1;

ALTER TABLE `flat_room`
 ADD COLUMN `isPutaway` int(1) DEFAULT '0' COMMENT '�Ƿ��ϼ�(0:�¼ܣ�1���ϼ�)' AFTER `roomPrice2`,
 ADD COLUMN `putawayTime` datetime DEFAULT '2015-10-01 00:00:00' COMMENT '�ϼ�ʱ��' AFTER `isPutaway`;


-- ͼƬ����ö�����
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('singleRoomPictureType-1', 'singleRoomPictureType', '1', '1', '����ͼƬ', '1', NULL);
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('singleRoomPictureType-2', 'singleRoomPictureType', '2', '2', '����������', '1', NULL);
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('singleRoomPictureType-3', 'singleRoomPictureType', '3', '3', '��������ͼƬ', '1', NULL);
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('singleRoomPictureType-4', 'singleRoomPictureType', '4', '4', '������̨ͼƬ', '1', NULL);
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('singleRoomPictureType-5', 'singleRoomPictureType', '5', '5', '��������ͼƬ', '1', NULL);
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('singleRoomPictureType-6', 'singleRoomPictureType', '6', '6', '����������ͼƬ', '1', NULL);
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('singleRoomPictureType-7', 'singleRoomPictureType', '7', '7', 'С���ܱ�ͼƬ', '1', NULL);
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('singleRoomPictureType-8', 'singleRoomPictureType', '8', '8', '����ͼ', '1', NULL);


/*
���ͼƬ��˹��ܲ˵�

Source Server         : 192.168.12.188
Source Server Version : 50625
Source Host           : 192.168.12.188:3306
Source Database       : mogodev

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015��9��8�� 14:03:23
Author ��zhegnliangjie
*/

-- ���ͼƬ��˹��ܲ˵�
-- ִ��ʱ��ע�� id �Ƿ����ظ�

INSERT INTO `perm_functionInfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`)
 VALUES ('180', '1000906', 'ͼƬ���', NULL, '6', '1', '9', '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');
 
INSERT INTO `perm_functionInfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`)
 VALUES ('181', '2018001', '��ԢͼƬ���', 'flats/flatsPicList', '1', '2', '180', '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');

INSERT INTO `perm_functionInfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`)
 VALUES ('182', '3018101', 'APPͼƬԤ��', 'flats/appPreview', '1', '3', '181', '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `perm_functionInfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) 
 VALUES ('183', '3018102', 'WEBͼƬԤ��', 'flats/webPreview', '2', '3', '181', '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `perm_functionInfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) 
 VALUES ('184', '3018103', 'ͼƬһ�����', 'flats/checkoutAllPicture', '3', '3', '181', '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `perm_functionInfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) 
VALUES ('185', '3018104', 'ͼƬԤ����ע', 'flats/addPictureRemark', '4', '3', '181', '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `perm_functionInfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) 
VALUES ('186', '3018105', '��ѯ������Ϣ', 'flats/queryRoomInfo', '5', '3', '181', '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');


 
 
 






