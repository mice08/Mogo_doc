/* Database name `mogoroomdb` ��Ģ���������ҵ���������*/
use mogoroomdb;

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(1401,'�������',1,1,1,0,null);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(140101,'Ģ��������',1,1,2,0,1401);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(14010101,'��ͷ�������',1,1,3,1,140101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(14010102,'����޸�����',1,1,3,1,140101);