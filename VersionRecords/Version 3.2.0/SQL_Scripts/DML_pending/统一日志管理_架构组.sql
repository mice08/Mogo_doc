/** ҵ������ʼ���ű�**/
use mogoroomdb;
	
delete from `comm_busitype` where busiType in (40112,50105,50106,30101002,30101003,30101004,40101002,40101004,40101005,40101006,40101007,40101008,40101009,40101010,40101011,40101012,40101013,50101002,50101003,50101004,50101005,50101006,50101007,50101008,50101009,50101010);

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40102','ҵ������',1,1,2,0,401);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101','�ֵ����',1,1,2,0,501);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50102','���˺Ź���',1,1,2,0,501);

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('30101002','���������Ϣ',1,1,3,1,'30101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('30101003','�༭Ͷ����Ϣ',1,1,3,1,'30101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('30101004','���Ͷ����Ϣ',1,1,3,1,'30101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101001','����С��',1,1,3,1,'40101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101002','�޸�С��',1,1,3,1,'40101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101003','������Ԣ¥',1,1,3,1,'40103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101004','�޸Ĺ�Ԣ¥',1,1,3,1,'40103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101005','ɾ����Ԣ¥',1,1,3,1,'40103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101006','������Դ',1,1,3,1,'40103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101007','�޸ķ�Դ',1,1,3,1,'40103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101008','ɾ����Դ',1,1,3,1,'40103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101009','��ʾ',1,1,3,1,'40103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101010','����',1,1,3,1,'40103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101011','��̬���',1,1,3,1,'40103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101012','����ҵ��',1,1,3,1,'40102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101013','�޸�ҵ��',1,1,3,1,'40102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101014','��ʾ/����',1,1,3,1,'40102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101001','�½��ֵ�',1,1,3,1,'50101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101002','�޸ķֵ���Ϣ',1,1,3,1,'50101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101003','�رշֵ�',1,1,3,1,'50101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101004','���䷿Դ',1,1,3,1,'50101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101005','���ķ�Դ',1,1,3,1,'50101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101006','�������˺�',1,1,3,1,'50102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101007','�������˺�',1,1,3,1,'50102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101008','�½����˺�',1,1,3,1,'50102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101009','�޸����˺�',1,1,3,1,'50102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101010','��ְ���˺�',1,1,3,1,'50102');

