/*  Database name `mogoroomdb` 删除重复业务编码*/
use mogoroomdb;
  
delete from `comm_busitype` where busiType in (50102007);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50102007,'房东密码修改',1,1,3,1,50102);

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 50106,'系统',1,1,2,0,501 );	
delete from `comm_busitype` where busiType in (50106001);	
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50106001,'房东账号登陆',1,1,3,1,50106);
