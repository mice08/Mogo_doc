/** 业务编码初始化脚本**/
use mogoroomdb;
 
delete from `comm_busitype` where id in ('160101005','160101007');

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160102006','修改角色',1,1,3,1,'160102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160102007','修改角色权限',1,1,3,1,'160102');


delete from `comm_busitype` where id in ('160103004');
delete from `comm_busitype` where id in ('160103005');
delete from `comm_busitype` where id in ('160103006');
delete from `comm_busitype` where id in ('160103007');
delete from `comm_busitype` where id in ('160103008');
delete from `comm_busitype` where id in ('160103009');

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160104001','新建模板',1,1,3,1,'160104');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160104002','修改模板',1,1,3,1,'160104');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160104003','删除模板',1,1,3,1,'160104');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160104004','禁用模板',1,1,3,1,'160104');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160104005','启用模板',1,1,3,1,'160104');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160104006','修改推送渠道',1,1,3,1,'160104');




