
/*
公寓房间表添加数据来源字段

Source Server         : 192.168.12.188
Source Server Version : 50625
Source Host           : 192.168.12.188:3306
Source Database       : mogodev

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015年9月23日 16:42:11
Author ：zhegnliangjie
*/

-- 公寓表添加数据来源字段
ALTER TABLE `flat_flats`
ADD COLUMN `updateBy` int(11) COMMENT '更新人' AFTER `roomTypePic`,
ADD COLUMN `createChannel` int(1) COMMENT '数据创建来源(1:租客APP,2:BS后台,3:官网,4:房东APP,5:房东PC)' AFTER `updateBy`,
ADD COLUMN `updateChannel` int(1) COMMENT '数据更新来源(1:租客APP,2:BS后台,3:官网,4:房东APP,5:房东PC)' AFTER `createChannel`;

-- 房间表添加数据来源字段
ALTER TABLE `flat_room`
ADD COLUMN `updateBy` int(11) COMMENT '更新人' AFTER `roomPrice2`,
ADD COLUMN `createChannel` int(1) COMMENT '数据创建来源(1:租客APP,2:BS后台,3:官网,4:房东APP,5:房东PC)' AFTER `updateBy`,
ADD COLUMN `updateChannel` int(1) COMMENT '数据更新来源(1:租客APP,2:BS后台,3:官网,4:房东APP,5:房东PC)' AFTER `createChannel`;



-- 初始化数据 默认来源BS后台

update  flat_flats  set createChannel = 2, updateChannel=2,updateBy=createBy where createby is not NULL;


update flat_flats set createChannel = 4, updateChannel=4, updateBy=landlordId,createby=landlordId where createby is NULL;


update  flat_room  set createChannel = 2,updateChannel=2,updateBy=createBy where createby is not NULL;

update flat_room  fr
left JOIN flat_flats  ff on ff.id = fr.flatsId
set fr.createChannel = 4, fr.updateChannel=4, fr.updateBy= ff.landlordId,fr.createby= ff.landlordId where fr.createby is NULL;
