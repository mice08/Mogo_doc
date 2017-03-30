/** 业务编码初始化脚本**/
use mogoroomdb;
	
delete from `comm_busitype` where id in ('50101001');
delete from `comm_busitype` where id in ('50101002');
delete from `comm_busitype` where id in ('50101003');
delete from `comm_busitype` where id in ('50101004');
delete from `comm_busitype` where id in ('50101005');
delete from `comm_busitype` where id in ('50101006');
delete from `comm_busitype` where id in ('50101007');
delete from `comm_busitype` where id in ('50101008');
delete from `comm_busitype` where id in ('50101009');
delete from `comm_busitype` where id in ('50101010');
delete from `comm_busitype` where id in ('50102001');
delete from `comm_busitype` where id in ('50102002');
delete from `comm_busitype` where id in ('50102003');
delete from `comm_busitype` where id in ('50102004');
delete from `comm_busitype` where id in ('50102005');
delete from `comm_busitype` where id in ('50102006');
delete from `comm_busitype` where id in ('50103001');
delete from `comm_busitype` where id in ('50103002');
delete from `comm_busitype` where id in ('50103003');
delete from `comm_busitype` where id in ('50104001');
delete from `comm_busitype` where id in ('50104002');
delete from `comm_busitype` where id in ('50104003');
delete from `comm_busitype` where id in ('50105001');
delete from `comm_busitype` where id in ('50105002');
delete from `comm_busitype` where id in ('160101001');
delete from `comm_busitype` where id in ('160101002');
delete from `comm_busitype` where id in ('160101003');
delete from `comm_busitype` where id in ('160101004');
delete from `comm_busitype` where id in ('160101005');
delete from `comm_busitype` where id in ('160101006');
delete from `comm_busitype` where id in ('160101007');
delete from `comm_busitype` where id in ('160101008');
delete from `comm_busitype` where id in ('160102001');
delete from `comm_busitype` where id in ('160102002');
delete from `comm_busitype` where id in ('160102003');
delete from `comm_busitype` where id in ('160102004');
delete from `comm_busitype` where id in ('160102005');
delete from `comm_busitype` where id in ('160102006');
delete from `comm_busitype` where id in ('160103001');
delete from `comm_busitype` where id in ('160103002');
delete from `comm_busitype` where id in ('160103003');
delete from `comm_busitype` where id in ('160103004');
delete from `comm_busitype` where id in ('160103005');
delete from `comm_busitype` where id in ('160103006');
delete from `comm_busitype` where id in ('160103007');
delete from `comm_busitype` where id in ('160103008');
delete from `comm_busitype` where id in ('160103009');
delete from `comm_busitype` where id in ('120101001');

delete from `comm_busitype` where id in ('50101','50102','50103','50104','50105');

delete from `comm_busitype` where id in ('1201');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('1201','通用模块',1,1,1,0,null);

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101','分店设置',1,1,2,0,'501');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50102','账号管理',1,1,2,0,'501');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50103','房源管理',1,1,2,0,'501');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50104','角色设置',1,1,2,0,'501');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50105','消息设置',1,1,2,0,'501');


delete from `comm_busitype` where id in ('160102','160103');

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160102','角色配置',1,1,2,0,'1601');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160103','消息模板管理',1,1,2,0,'1601');

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101001','新建分店',1,1,3,1,'50101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101002','修改分店',1,1,3,1,'50101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101003','关闭分店',1,1,3,1,'50101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101004','分配房源',1,1,3,1,'50101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101005','房源取消关联',1,1,3,1,'50101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101006','分配子账号',1,1,3,1,'50102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101007','更改子账号',1,1,3,1,'50102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101008','新建子账号',1,1,3,1,'50102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101009','修改子账号',1,1,3,1,'50102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101010','离职子账号',1,1,3,1,'50102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50102001','移出子账号',1,1,3,1,'50102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50102002','禁用子账号',1,1,3,1,'50102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50102003','启用子账号',1,1,3,1,'50102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50102004','员工总览',1,1,3,1,'50102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50102005','账号登录记录',1,1,3,1,'50102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50102006','批量修改分店',1,1,3,1,'50102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50103001','批量分配房源',1,1,3,1,'50103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50103002','更改分店',1,1,3,1,'50103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50103003','取消关联分店',1,1,3,1,'50103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50104001','分配角色',1,1,3,1,'50104');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50104002','修改角色 ',1,1,3,1,'50104');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50104003','批量修改角色',1,1,3,1,'50104');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50105001','公司消息接收',1,1,3,1,'50105');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50105002','分店消息接收',1,1,3,1,'50105');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101001','菜单删除 ',1,1,3,1,'160101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101002','功能树添加',1,1,3,1,'160101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101003','功能树修改',1,1,3,1,'160101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101004','功能树删除',1,1,3,1,'160101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101005','修改角色',1,1,3,1,'160101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101006','删除角色',1,1,3,1,'160101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101007','修改角色权限',1,1,3,1,'160101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160101008','给房东配角色',1,1,3,1,'160101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160102001','新增角色',1,1,3,1,'160102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160102002','删除角色',1,1,3,1,'160102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160102003','禁用角色',1,1,3,1,'160102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160102004','启用角色',1,1,3,1,'160102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160102005','置顶角色',1,1,3,1,'160102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160102006','取消置顶',1,1,3,1,'160102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160103001','新建类别',1,1,3,1,'160103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160103002','修改类别',1,1,3,1,'160103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160103003','删除类别',1,1,3,1,'160103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160103004','新建模板',1,1,3,1,'160103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160103005','修改模板',1,1,3,1,'160103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160103006','删除模板',1,1,3,1,'160103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160103007','禁用模板',1,1,3,1,'160103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160103008','启用模板',1,1,3,1,'160103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('160103009','修改推送渠道',1,1,3,1,'160103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('120101001','导出',1,1,3,1,'120101');




