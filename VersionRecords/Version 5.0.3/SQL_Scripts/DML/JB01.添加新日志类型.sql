delete from `comm_busitype` where busiType in (100102);
delete from `comm_busitype` where busiType in (100102001);
delete from `comm_busitype` where busiType in (100102002);
delete from `comm_busitype` where busiType in (100102003);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(100102,'��Լȷ������',1,1,2,0,1001);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(100102001,'Appȷ����Լ',1,1,3,1,100102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(100102002,'΢�Ź��ں�ȷ����Լ',1,1,3,1,100102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(100102003,'֧��������ȷ����Լ',1,1,3,1,100102);
