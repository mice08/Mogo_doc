/*
Navicat MySQL Data Transfer

Source Server         : 192.168.12.188
Source Server Version : 50625
Source Host           : 192.168.12.188:3306
Source Database       : mogodev

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015-07-31 19:19:25
*/


-- ----------------------------
-- Table structure for supp_userWarnRelation
-- ----------------------------
CREATE TABLE `supp_userWarnRelation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeRelationId` int(11) DEFAULT NULL COMMENT '告警类型行为Id',
  `sendTo` int(11) DEFAULT NULL COMMENT '发送的对象Id',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `updateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='告警类型人员关联表';

-- ----------------------------
-- Table structure for supp_warnTypeRelation
-- ----------------------------
CREATE TABLE `supp_warnTypeRelation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warnTypeId` varchar(11) DEFAULT NULL COMMENT '告警类型Id',
  `warnActionId` varchar(11) DEFAULT NULL COMMENT '告警行为Id',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `creatTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `updateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='告警类型行为关联表';

-- ----------------------------
-- Table structure for supp_warnType
-- ----------------------------
CREATE TABLE `supp_warnType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(15) DEFAULT NULL COMMENT '告警类型',
  `name` varchar(255) DEFAULT NULL COMMENT '类型名称',
  `description` varchar(255) DEFAULT NULL COMMENT '类型描述',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `updateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='告警类型表';

-- ----------------------------
-- Table structure for supp_warnDetail
-- ----------------------------
CREATE TABLE `supp_warnDetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warnId` int(11) DEFAULT NULL COMMENT '告警主表Id',
  `content` varchar(512) DEFAULT NULL COMMENT '告警明细',
  `warnJson` varchar(1024) DEFAULT NULL COMMENT '处理自定义属性的JSon数据',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `updateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='告警明细表';


-- ----------------------------
-- Table structure for supp_warnAction
-- ----------------------------
CREATE TABLE `supp_warnAction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actionType` varchar(255) DEFAULT NULL COMMENT '告警动作',
  `name` varchar(255) DEFAULT NULL COMMENT '行为名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '创建人',
  `updateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `actionType` (`actionType`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='告警行为表';


-- ----------------------------
-- Records of supp_warnAction
-- ----------------------------
INSERT INTO `supp_warnAction` VALUES ('1', 'A001', '邮件', '发送邮件', null, '2015-07-31 16:04:04', '592', '2015-08-03 11:18:52', '', '1');
INSERT INTO `supp_warnAction` VALUES ('2', 'A002', '短信', '发送短信', null, '2015-07-31 16:04:17', '592', '2015-08-03 11:05:15', '', '1');
INSERT INTO `supp_warnAction` VALUES ('3', 'A003', '推送', '发送推送', null, '2015-07-31 16:04:35', '592', '2015-08-06 10:05:43', '', '1');
INSERT INTO `supp_warnAction` VALUES ('4', 'A004', '站内信', '发送站内信', null, '2015-07-31 16:05:06', '592', '2015-08-03 11:06:13', '', '1');

-- ----------------------------
-- Table structure for supp_warn
-- ----------------------------
CREATE TABLE `supp_warn` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '告警编号',
  `warnCode` varchar(15) DEFAULT NULL COMMENT '告警编码',
  `warnOrigin` varchar(255) DEFAULT NULL COMMENT '告警来源模块',
  `warnType` int(11) DEFAULT NULL COMMENT '告警类型',
  `warnTime` datetime DEFAULT NULL COMMENT '告警时间',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `isNotice` tinyint(1) DEFAULT '0' COMMENT '是否通知',
  `isProcess` tinyint(1) DEFAULT '0' COMMENT '是否处理',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `updateTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='告警表';
