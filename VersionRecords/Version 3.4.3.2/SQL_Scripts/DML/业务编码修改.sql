/*  Database name `mogoroomdb` 修改业务编码*/
use mogoroomdb;
 

delete from `comm_busitype` where busiType in (50103);
	
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 50103,'房源管理',1,1,2,0,501 );
