/*  Database name `mogoroomdb` �޸�ҵ�����*/
use mogoroomdb;
 

delete from `comm_busitype` where busiType in (50103);
	
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 50103,'��Դ����',1,1,2,0,501 );
