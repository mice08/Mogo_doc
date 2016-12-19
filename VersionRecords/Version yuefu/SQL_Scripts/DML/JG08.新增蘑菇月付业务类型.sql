/* Database name `mogoroomdb` ，聚有财蘑菇宝月付新增买回和放款业务类型*/
USE mogoroomdb;


DELETE FROM `comm_busitype` WHERE busiType IN (140103);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES( 140103,'蘑菇月付',1,1,2,0,1401 );

DELETE FROM `comm_busitype` WHERE busiType IN (140103001);
DELETE FROM `comm_busitype` WHERE busiType IN (140103002);
DELETE FROM `comm_busitype` WHERE busiType IN (140103003);	
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(140103001,'蘑菇月付放款',1,1,3,1,140103);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(140103002,'蘑菇月付买回本金',1,1,3,1,140103);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(140103003,'蘑菇月付买回滞纳金',1,1,3,1,140103);