/* Database name `mogoroomdb`��������Ӫ��Ϣ��ҵ������*/

use mogoroomdb;

DELETE FROM `comm_busitype` WHERE busiType IN (70102);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES( 70102,'��Ӫ��Ϣ����',1,1,2,0,701 );

DELETE FROM `comm_busitype` WHERE busiType IN (70102001);
DELETE FROM `comm_busitype` WHERE busiType IN (70102002);
DELETE FROM `comm_busitype` WHERE busiType IN (70102003);
DELETE FROM `comm_busitype` WHERE busiType IN (70102004);
DELETE FROM `comm_busitype` WHERE busiType IN (70102005);
DELETE FROM `comm_busitype` WHERE busiType IN (70102006);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(70102001,'����',1,1,3,1,70102);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(70102002,'�޸�',1,1,3,1,70102);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(70102003,'���ͨ��',1,1,3,1,70102);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(70102004,'��˲�ͨ��',1,1,3,1,70102);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(70102005,'ȡ������',1,1,3,1,70102);
INSERT INTO `comm_busitype`(busiType,busiName,STATUS,sort,LEVEL,isLeaf,parentId) VALUES(70102006,'ɾ��',1,1,3,1,70102);