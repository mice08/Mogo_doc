/* Database name `mogoroomdb`，配置运营消息的业务类型*/

use mogoroomdb;

DELETE FROM `comm_busitype` WHERE busiType IN (70102);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES( 70102,'运营消息管理',1,1,2,0,701 );

DELETE FROM `comm_busitype` WHERE busiType IN (70102001);
DELETE FROM `comm_busitype` WHERE busiType IN (70102002);
DELETE FROM `comm_busitype` WHERE busiType IN (70102003);
DELETE FROM `comm_busitype` WHERE busiType IN (70102004);
DELETE FROM `comm_busitype` WHERE busiType IN (70102005);
DELETE FROM `comm_busitype` WHERE busiType IN (70102006);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(70102001,'新增',1,1,3,1,70102);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(70102002,'修改',1,1,3,1,70102);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(70102003,'审核通过',1,1,3,1,70102);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(70102004,'审核不通过',1,1,3,1,70102);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(70102005,'取消发送',1,1,3,1,70102);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(70102006,'删除',1,1,3,1,70102);