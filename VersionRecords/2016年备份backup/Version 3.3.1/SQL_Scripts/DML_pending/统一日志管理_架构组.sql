/** ҵ������ʼ���ű�**/
use mogoroomdb;
	
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('60101003','�޸ķ���������',1,1,3,1,'60101');


delete from `comm_busitype` where busiType=1601;
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('1601','��֯����',1,1,1,0,null);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101','����Ȩ�޹���',1,1,2,0,'1601');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101001','�˵�ɾ��',1,1,3,1,'160101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101002','���������',1,1,3,1,'160101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101003','�������޸�',1,1,3,1,'160101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101004','������ɾ��',1,1,3,1,'160101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101005','�޸Ľ�ɫ',1,1,3,1,'160101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101006','ɾ����ɫ',1,1,3,1,'160101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101007','�޸Ľ�ɫȨ��',1,1,3,1,'160101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101008','���������ɫ',1,1,3,1,'160101');