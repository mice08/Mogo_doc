/*
修改图片数据

Source Server         : 192.168.12.188
Source Server Version : 50625
Source Host           : 192.168.12.188:3306
Source Database       : mogodev

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015年9月7日 17:35:43
Author ：zhegnliangjie
*/

-- 添加图片审核状态，以及图片上传来源
 -- ALTER TABLE `flat_room_picture`
 -- ADD COLUMN `description`  varchar(255) NULL COMMENT '图片描述' AFTER `verifyIdea`,
 -- ADD COLUMN `innerImageType`  int(11) NULL  COMMENT '公寓内的图片类型（参照字典表）' AFTER `description`,
 -- ADD COLUMN `sequences`  int(11) NULL DEFAULT 1 COMMENT '序列' AFTER `innerImageType`;

 ALTER TABLE `flat_room_picture`
 CHANGE COLUMN `picOrigin` `channel`  int(1) NULL DEFAULT 1 COMMENT '图片来源：参照来源枚举' AFTER `verifyStatus`;

-- 房间表添加公寓描述字段
-- ALTER TABLE `flat_room`
-- ADD COLUMN `picDescribe`  varchar(500) NULL COMMENT '公寓图片描述' AFTER `salePrice2`;

-- 初始化语句
-- 修改初始图片类型
UPDATE  flat_room_picture set innerImageType =0 where imageType like 'image_room%';
UPDATE  flat_room_picture set innerImageType =7 where imageType like 'image_com%' ;
UPDATE  flat_room_picture set innerImageType =9 where imageType like 'image_fl%' ;

-- 修改初始图片默认为审核通过
UPDATE  flat_room_picture set verifyStatus =2;
-- 修改默认图片来源
UPDATE  flat_room_picture set channel =1;

ALTER TABLE `flat_room`
 ADD COLUMN `isPutaway` int(1) DEFAULT '0' COMMENT '是否上架(0:下架，1：上架)' AFTER `roomPrice2`,
 ADD COLUMN `putawayTime` datetime DEFAULT '2015-10-01 00:00:00' COMMENT '上架时间' AFTER `isPutaway`;


-- 图片类型枚举语句
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('singleRoomPictureType-1', 'singleRoomPictureType', '1', '1', '房间图片', '1', NULL);
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('singleRoomPictureType-2', 'singleRoomPictureType', '2', '2', '独立卫生间', '1', NULL);
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('singleRoomPictureType-3', 'singleRoomPictureType', '3', '3', '公共区域图片', '1', NULL);
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('singleRoomPictureType-4', 'singleRoomPictureType', '4', '4', '公共阳台图片', '1', NULL);
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('singleRoomPictureType-5', 'singleRoomPictureType', '5', '5', '公共厨房图片', '1', NULL);
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('singleRoomPictureType-6', 'singleRoomPictureType', '6', '6', '公共卫生间图片', '1', NULL);
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('singleRoomPictureType-7', 'singleRoomPictureType', '7', '7', '小区周边图片', '1', NULL);
INSERT INTO `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) VALUES ('singleRoomPictureType-8', 'singleRoomPictureType', '8', '8', '房型图', '1', NULL);


/*
添加图片审核功能菜单

Source Server         : 192.168.12.188
Source Server Version : 50625
Source Host           : 192.168.12.188:3306
Source Database       : mogodev

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015年9月8日 14:03:23
Author ：zhegnliangjie
*/

-- 添加图片审核功能菜单
-- 执行时请注意 id 是否有重复

INSERT INTO `perm_functionInfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`)
 VALUES ('180', '1000906', '图片审核', NULL, '6', '1', '9', '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');
 
INSERT INTO `perm_functionInfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`)
 VALUES ('181', '2018001', '公寓图片审核', 'flats/flatsPicList', '1', '2', '180', '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');

INSERT INTO `perm_functionInfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`)
 VALUES ('182', '3018101', 'APP图片预览', 'flats/appPreview', '1', '3', '181', '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `perm_functionInfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) 
 VALUES ('183', '3018102', 'WEB图片预览', 'flats/webPreview', '2', '3', '181', '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `perm_functionInfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) 
 VALUES ('184', '3018103', '图片一键审核', 'flats/checkoutAllPicture', '3', '3', '181', '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `perm_functionInfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) 
VALUES ('185', '3018104', '图片预览备注', 'flats/addPictureRemark', '4', '3', '181', '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `perm_functionInfo` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) 
VALUES ('186', '3018105', '查询房间信息', 'flats/queryRoomInfo', '5', '3', '181', '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1');


 
 
 






