/* Database name `mogoroomdb`， CMS增加内容推荐位 */

use mogoroomdb;

INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
VALUES(213001,'官网_登录页_顶部轮播','','0','2','2000082',NOW(),'2000082',NOW(),'1','1','0', '3', '0');

INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
VALUES(201019,'官网_首页_推荐品牌主题','','0','3','2000082',NOW(),'2000082',NOW(),'1','1','0', '3', '0');

INSERT INTO `coms_menu` (`code`, `name`, `url`, `seq`, `level`, `createBy`, `createTime`, `updateBy`, `updateTime`, `status`, `type`, `pid`, channel, isMenu) 
VALUES(301019,'APP_首页_推荐品牌主题','','0','3','2000082',NOW(),'2000082',NOW(),'1','1','0', '1', '0');