/*新增业务类型*/
USE mogoroomdb;

DELETE FROM `comm_busitype` WHERE busiType IN (140105,1401);
DELETE FROM `comm_busitype` WHERE busiType IN (140105001);
DELETE FROM `comm_busitype` WHERE busiType IN (140105002);

INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(140105,'终止蘑菇协议',1,1,2,0,1401);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(140105001,'终止蘑菇宝协议',1,1,3,1,140105);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(140105002,'终止蘑菇月付协议',1,1,3,1,140105);

/*修改退房操作业务类型说明*/
UPDATE comm_busitype SET busiName = '挂账退房' WHERE busiType = 20101016;
UPDATE comm_busitype SET busiName = '退房结算操作' WHERE busiType = 20101015;