/*
�޸ķ����˿��������

Source Server         : 192.168.12.188
Source Server Version : 50625
Source Host           : 192.168.12.188:3306
Source Database       : mogodev

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015��8��27�� 15:17:30
Author ��zhegnliangjie
*/

-- �ۺ󷿶��˿�� ��������޸�Ϊdecimal

ALTER TABLE `supp_landlordRefundRecord`
MODIFY COLUMN `amount`  decimal NOT NULL COMMENT '���' AFTER `id`;