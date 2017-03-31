/*
Navicat MySQL Data Transfer

Source Server         : mogo
Source Server Version : 50625
Source Host           : 192.168.12.188:3306
Source Database       : mogodev

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015-08-05 17:49:01
*/

-- ----------------------------
-- Table structure for flat_jointRoom
-- ----------------------------
CREATE TABLE `flat_jointRoom` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `roomId` int(11) NOT NULL COMMENT '房间ID',
  `websiteRoomId` int(20) DEFAULT NULL COMMENT '赶集网对应房间ID',
  `status` tinyint(4) DEFAULT NULL COMMENT '对接状态 1-已同步 2-已推广',
  `mogoURL` varchar(128) CHARACTER SET latin1 DEFAULT NULL COMMENT '官网URL',
  `websiteURL` varchar(128) CHARACTER SET latin1 DEFAULT NULL COMMENT '赶集房源URL',
  `websiteType` int(11) DEFAULT NULL COMMENT '对接网站类型 1-赶集网 2-58同城',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flat_joint_ganjiCommunity
-- ----------------------------
CREATE TABLE `flat_joint_ganjiCommunity` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `mogoCommunityId` int(11) DEFAULT NULL COMMENT 'mogo小区Id',
  `ganjiCommunityId` int(11) DEFAULT NULL COMMENT '赶集网小区的Id',
  `ganjiCommunityName` varchar(64) DEFAULT NULL COMMENT '赶集网小区的Name',
  `ganjiCommunityDistrict` varchar(64) DEFAULT NULL COMMENT '赶集网该小区对应的区域',
  `ganjiCommunityStreet` varchar(128) DEFAULT NULL COMMENT '赶集网该小区对应的街道',
  `ganjiCommunityAddress` varchar(256) DEFAULT NULL COMMENT '赶集网该小区对应的地址',
  `ganjiCommunityLatLng` varchar(256) DEFAULT NULL COMMENT '赶集网该小区对应的经纬度',
  `status` tinyint(4) DEFAULT NULL COMMENT '该小区和赶集网同步的状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=550 DEFAULT CHARSET=utf8;

-- ----------------------------
-- add Records of perm_functionInfo
-- ----------------------------
INSERT INTO `perm_functionInfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) VALUES ('3041002', '合作网站房源同步', 'joint/syncRooms', '2', '3', '410', '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `perm_functionInfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) VALUES ('3041006', '获取对接房源列表', 'joint/listJointRooms', '6', '3', '410', '0', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '1');
INSERT INTO `perm_functionInfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) VALUES ('2040901', '赶集网对接房源列表', 'joint/ganjiListJointRooms', '1', '2', '409', '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `perm_functionInfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) VALUES ('3041003', '合作网站房源删除', 'joint/delRooms', '3', '3', '410', '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `perm_functionInfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) VALUES ('3041004', '合作网站批量同步或推广', 'joint/batchSyncRooms', '4', '3', '410', '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `perm_functionInfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) VALUES ('3041005', '合作网站批量删除或取消推广', 'joint/batchDelRooms', '5', '3', '410', '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');


INSERT INTO `perm_functionInfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) VALUES ('408', '0000011', '合作网站对接', NULL, '11', '0', '0', '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `perm_functionInfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) VALUES ('409', '1040801', '赶集网对接', NULL, '1', '1', '408', '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');
