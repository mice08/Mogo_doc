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

-- �������ӹ�Ԣ�����ֶ�
ALTER TABLE `flat_room`
ADD COLUMN `picDescribe`  varchar(500) NULL COMMENT '��ԢͼƬ����' AFTER `salePrice2`;





