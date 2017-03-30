/*
添加保证金审核功能

Source Server         : 192.168.12.188
Source Server Version : 50625
Source Host           : 192.168.12.188:3306
Source Database       : mogodev

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015年9月10日 13:23:52
Author ：zhegnliangjie
*/

-- 创建BS后台充值保证金数据表
CREATE TABLE `user_rechangeBalance` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `landlordId` int(11) DEFAULT NULL COMMENT '房东ID',
  `accountNum` varchar(32) DEFAULT NULL COMMENT '房东账户',
  `balance` decimal(12,2) DEFAULT NULL COMMENT '充值保证金额',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createTime` datetime DEFAULT NULL,
  `verifierStatus` int(1) DEFAULT NULL COMMENT '审核状态（1：通过，2：不通过）',
  `verifierBy` int(11) DEFAULT NULL COMMENT '审核人',
  `verifierTime` datetime DEFAULT NULL COMMENT '审核时间',
  `verifierIdea` varchar(255) DEFAULT NULL COMMENT '审核意见',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `status` int(1) DEFAULT '1' COMMENT '状态(0：有效，1：无效)',
  PRIMARY KEY (`id`)
);

-- 添加保证金审核功能菜单 

INSERT INTO `perm_functionInfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) 
VALUES ( '3002711', '添加保证金', 'landlord/addBalance', '2', '3', '27', '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `perm_functionInfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) 
VALUES ( '3002712', '审核保证金', 'landlord/verifyBalance', '3', '3', '27', '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');



