/** 业务编码初始化脚本**/
use mogoroomdb;
 
delete from `comm_busitype` where id in ('160101005','160101007');

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160102006','修改角色',1,1,3,1,'160102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160102007','修改角色权限',1,1,3,1,'160102');

