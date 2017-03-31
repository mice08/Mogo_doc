
/*
��Ԣ��������������Դ�ֶ�

Source Server         : 192.168.12.188
Source Server Version : 50625
Source Host           : 192.168.12.188:3306
Source Database       : mogodev

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015��9��23�� 16:42:11
Author ��zhegnliangjie
*/

-- ��Ԣ�����������Դ�ֶ�
ALTER TABLE `flat_flats`
ADD COLUMN `updateBy` int(11) COMMENT '������' AFTER `roomTypePic`,
ADD COLUMN `createChannel` int(1) COMMENT '���ݴ�����Դ(1:���APP,2:BS��̨,3:����,4:����APP,5:����PC)' AFTER `updateBy`,
ADD COLUMN `updateChannel` int(1) COMMENT '���ݸ�����Դ(1:���APP,2:BS��̨,3:����,4:����APP,5:����PC)' AFTER `createChannel`;

-- ��������������Դ�ֶ�
ALTER TABLE `flat_room`
ADD COLUMN `updateBy` int(11) COMMENT '������' AFTER `roomPrice2`,
ADD COLUMN `createChannel` int(1) COMMENT '���ݴ�����Դ(1:���APP,2:BS��̨,3:����,4:����APP,5:����PC)' AFTER `updateBy`,
ADD COLUMN `updateChannel` int(1) COMMENT '���ݸ�����Դ(1:���APP,2:BS��̨,3:����,4:����APP,5:����PC)' AFTER `createChannel`;



-- ��ʼ������ Ĭ����ԴBS��̨

update  flat_flats  set createChannel = 2, updateChannel=2,updateBy=createBy where createby is not NULL;


update flat_flats set createChannel = 4, updateChannel=4, updateBy=landlordId,createby=landlordId where createby is NULL;


update  flat_room  set createChannel = 2,updateChannel=2,updateBy=createBy where createby is not NULL;

update flat_room  fr
left JOIN flat_flats  ff on ff.id = fr.flatsId
set fr.createChannel = 4, fr.updateChannel=4, fr.updateBy= ff.landlordId,fr.createby= ff.landlordId where fr.createby is NULL;
