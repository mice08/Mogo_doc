/*  Database name `mogoroomdb` ɾ���ظ�ҵ�����*/
use mogoroomdb;
  
delete from `comm_busitype` where busiType in (50102007);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50102007,'���������޸�',1,1,3,1,50102);

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 50106,'ϵͳ',1,1,2,0,501 );	
delete from `comm_busitype` where busiType in (50106001);	
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50106001,'�����˺ŵ�½',1,1,3,1,50106);
