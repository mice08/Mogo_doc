/** 业务编码初始化脚本**/
use mogoroomdb;
	
delete from `comm_busitype` where busiType in (40112,50105,50106,30101002,30101003,30101004,40101002,40101004,40101005,40101006,40101007,40101008,40101009,40101010,40101011,40101012,40101013,50101002,50101003,50101004,50101005,50101006,50101007,50101008,50101009,50101010,10101012);

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40102','业主操作',1,1,2,0,401);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101','分店管理',1,1,2,0,501);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50102','子账号管理',1,1,2,0,501);

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('30101002','解决报修信息',1,1,3,1,'30101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('30101003','编辑投诉信息',1,1,3,1,'30101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('30101004','解决投诉信息',1,1,3,1,'30101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101001','新增小区',1,1,3,1,'40101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101002','修改小区',1,1,3,1,'40101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101003','新增公寓楼',1,1,3,1,'40103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101004','修改公寓楼',1,1,3,1,'40103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101005','删除公寓楼',1,1,3,1,'40103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101006','新增房源',1,1,3,1,'40103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101007','修改房源',1,1,3,1,'40103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101008','删除房源',1,1,3,1,'40103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101009','显示',1,1,3,1,'40103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101010','隐藏',1,1,3,1,'40103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101011','房态变更',1,1,3,1,'40103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101012','新增业主',1,1,3,1,'40102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101013','修改业主',1,1,3,1,'40102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101014','显示/隐藏',1,1,3,1,'40102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101001','新建分店',1,1,3,1,'50101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101002','修改分店信息',1,1,3,1,'50101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101003','关闭分店',1,1,3,1,'50101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101004','分配房源',1,1,3,1,'50101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101005','房源取消关联',1,1,3,1,'50101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101006','分配子账号',1,1,3,1,'50102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101007','更改子账号',1,1,3,1,'50102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101008','新建子账号',1,1,3,1,'50102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101009','修改子账号',1,1,3,1,'50102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101010','离职子账号',1,1,3,1,'50102');

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('10101012','合并支付',1,1,3,1,'10103');

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('10104','房东自定义',1,1,3,1,'101');

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('10104002','房东添加退房退款',1,1,3,1,'10104');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('10104001','房东添加退房优惠',1,1,3,1,'10104');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('10104003','房东添加退房收款',1,1,3,1,'10104');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('10104004','房东记为退房坏账',1,1,3,1,'10104');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('10104005','房东优惠账单',1,1,3,1,'10104');