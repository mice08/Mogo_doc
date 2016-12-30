/* Database name `mogoroomdb`， CMS增加房东公告CMS管理 */

use mogoroomdb;

INSERT INTO `coms_title` (`titleNum`, `titleName`, `describes`) VALUES(141,'消息类型','单选');
INSERT INTO `coms_title` (`titleNum`, `titleName`, `describes`) VALUES(142,'发送对象','单选');
INSERT INTO `coms_title` (`titleNum`, `titleName`, `describes`) VALUES(143,'有效时间开始','');
INSERT INTO `coms_title` (`titleNum`, `titleName`, `describes`) VALUES(144,'有效时间结束','');
INSERT INTO `coms_title` (`titleNum`, `titleName`, `describes`) VALUES(145,'发送频率','单选');

SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='coms_menu');
INSERT INTO `coms_menu` (`id`, `code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
VALUES(@i, 400001, '房东公告CMS管理_公告管理','','1','2','-1',NOW(),'-1',NOW(),'1','1','0', '2', '0');
SET @j = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='coms_menu');
INSERT INTO `coms_menu` (`id`, `code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
VALUES(@j, 400002, '房东公告CMS管理_弹窗管理','','2','2','-1',NOW(),'-1',NOW(),'1','1','0', '2', '0');

INSERT INTO `coms_menutitlerel` (`menuId`, `titleNum`, `titleName`, `showSeq`) 
VALUES(@i, 141,'消息类型','1');
INSERT INTO `coms_menutitlerel` (`menuId`, `titleNum`, `titleName`, `showSeq`) 
VALUES(@i, 111,'标题','2');
INSERT INTO `coms_menutitlerel` (`menuId`, `titleNum`, `titleName`, `showSeq`) 
VALUES(@i, 123,'上线时间','3');
INSERT INTO `coms_menutitlerel` (`menuId`, `titleNum`, `titleName`, `showSeq`) 
VALUES(@i, 122,'排序','4');
INSERT INTO `coms_menutitlerel` (`menuId`, `titleNum`, `titleName`, `showSeq`) 
VALUES(@i, 109,'封面图','5');
INSERT INTO `coms_menutitlerel` (`menuId`, `titleNum`, `titleName`, `showSeq`) 
VALUES(@i, 121,'编辑器','6');

INSERT INTO `coms_menutitlerel` (`menuId`, `titleNum`, `titleName`, `showSeq`) 
VALUES(@j, 111,'标题','1');
INSERT INTO `coms_menutitlerel` (`menuId`, `titleNum`, `titleName`, `showSeq`) 
VALUES(@j, 142,'发送对象','2');
INSERT INTO `coms_menutitlerel` (`menuId`, `titleNum`, `titleName`, `showSeq`) 
VALUES(@j, 143,'有效时间开始','3');
INSERT INTO `coms_menutitlerel` (`menuId`, `titleNum`, `titleName`, `showSeq`) 
VALUES(@j, 144,'有效时间结束','4');
INSERT INTO `coms_menutitlerel` (`menuId`, `titleNum`, `titleName`, `showSeq`) 
VALUES(@j, 145,'发送频率','5');
INSERT INTO `coms_menutitlerel` (`menuId`, `titleNum`, `titleName`, `showSeq`) 
VALUES(@j, 110,'封面图链','6');
INSERT INTO `coms_menutitlerel` (`menuId`, `titleNum`, `titleName`, `showSeq`) 
VALUES(@j, 109,'封面图','7');

