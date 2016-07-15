/** 业务编码初始化脚本**/
use mogoroomdb;
	
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('60101003','修改房东服务人',1,1,3,1,'60101');


delete from `comm_busitype` where busiType=1601;
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('1601','组织管理',1,1,1,0,null);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101','房东权限管理',1,1,2,0,'1601');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101001','菜单删除',1,1,3,1,'160101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101002','功能树添加',1,1,3,1,'160101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101003','功能树修改',1,1,3,1,'160101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101004','功能树删除',1,1,3,1,'160101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101005','修改角色',1,1,3,1,'160101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101006','删除角色',1,1,3,1,'160101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101007','修改角色权限',1,1,3,1,'160101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101008','给房东配角色',1,1,3,1,'160101');