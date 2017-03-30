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

-- 房间表添加公寓描述字段
ALTER TABLE `flat_room`
ADD COLUMN `picDescribe`  varchar(500) NULL COMMENT '公寓图片描述' AFTER `salePrice2`;





