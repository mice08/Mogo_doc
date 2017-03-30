/*
修改房东退款表金额类型

Source Server         : 192.168.12.188
Source Server Version : 50625
Source Host           : 192.168.12.188:3306
Source Database       : mogodev

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015年8月27日 15:17:30
Author ：zhegnliangjie
*/

-- 售后房东退款表 金额类型修改为decimal

ALTER TABLE `supp_landlordRefundRecord`
MODIFY COLUMN `amount`  decimal NOT NULL COMMENT '金额' AFTER `id`;