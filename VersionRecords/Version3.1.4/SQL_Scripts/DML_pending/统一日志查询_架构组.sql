/** 业务编码初始化脚本**/
use mogoroomdb;
	
begin

/** 更新历史脚本**/
update comm_busitype set level=3,parentId=null,isLeaf=1 where 1=1;

/** 插入一级业务大类**/
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('101','财务管理',1,1,1,0,null);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('201','销售管理',1,1,1,0,null);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('301','售后管理',1,1,1,0,null);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('401','房源管理',1,1,1,0,null);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('501','分店管理',1,1,1,0,null);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('601','用户管理',1,1,1,0,null);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('701','消息管理',1,1,1,0,null);



/** 插入二级业务类型**/
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('10101','账单推送',1,1,2,0,10001);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('10102','数据操作',1,1,2,0,10001);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('10103','钱款操作',1,1,2,0,10001);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('20101','预约流程',1,1,2,0,20001);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('20102','预定流程',1,1,2,0,20001);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('20103','租约流程',1,1,2,0,20001);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('30101','售后服务',1,1,2,0,30001);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101','小区管理',1,1,2,0,40001);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40103','房源操作',1,1,2,0,40001);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40112','业主操作',1,1,2,0,40001);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50105','分店管理',1,1,2,0,50001);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50106','子账号管理',1,1,2,0,50001);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('60101','修改账号',1,1,2,0,60001);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('70101','消息操作',1,1,2,0,70001);




/** 插入三级业务子类型**/
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('10101001','新增一次账单',1,1,3,1,'1000101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('10101002','新增多次账单',1,1,3,1,'1000101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('10101003','修改推送账单',1,1,3,1,'1000101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('10101004','撤销推送账单',1,1,3,1,'1000101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('10101005','数据导出',1,1,3,1,'1000102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('10101006','费用类型变更',1,1,3,1,'1000102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('10101007','支付处理',1,1,3,1,'1000103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('10101008','退款审批',1,1,3,1,'1000103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('10101009','支付密码',1,1,3,1,'1000103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('10101010','账户充值',1,1,3,1,'1000103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('10101011','账户提现',1,1,3,1,'1000103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('20101001','新增预约',1,1,3,1,'2000101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('20101002','新增预定',1,1,3,1,'2000102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('20101003','预定审核',1,1,3,1,'2000102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('20101004','预定成功',1,1,3,1,'2000102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('20101005','新增签约',1,1,3,1,'2000103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('20101006','签约审核',1,1,3,1,'2000103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('20101007','签约修改',1,1,3,1,'2000103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('20101008','入住人调整',1,1,3,1,'2000103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('20101009','合同照片调整',1,1,3,1,'2000103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('20101010','订单状态变更',1,1,3,1,'2000103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('20101011','新增续约',1,1,3,1,'2000103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('20101012','续约修改',1,1,3,1,'2000103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('20101013','续约撤销',1,1,3,1,'2000103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('20101014','房源开放销售',1,1,3,1,'2000103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('20101015','退房账款结算',1,1,3,1,'2000103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('20101016','退房处理',1,1,3,1,'2000103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('20101017','新增补录租约',1,1,3,1,'2000103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('20101018','修改补录租约',1,1,3,1,'2000103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('20101019','删除补录租约',1,1,3,1,'2000103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('30101001','编辑报修信息',1,1,3,1,'3000101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('30101002','解决报修信息',1,1,3,1,'3000102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('30101003','编辑投诉信息',1,1,3,1,'3000103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('30101004','解决投诉信息',1,1,3,1,'3000104');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101001','新增小区',1,1,3,1,'4000101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101002','修改小区',1,1,3,1,'4000102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101003','新增公寓楼',1,1,3,1,'4000103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101004','修改公寓楼',1,1,3,1,'4000104');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101005','删除公寓楼',1,1,3,1,'4000105');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101006','新增房源',1,1,3,1,'4000106');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101007','修改房源',1,1,3,1,'4000107');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101008','删除房源',1,1,3,1,'4000108');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101009','显示',1,1,3,1,'4000109');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101010','隐藏',1,1,3,1,'4000110');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101011','房态变更',1,1,3,1,'4000111');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101012','新增业主',1,1,3,1,'4000112');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('40101013','修改业主',1,1,3,1,'4000113');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101001','新建分店',1,1,3,1,'5000101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101002','修改分店信息',1,1,3,1,'5000102');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101003','关闭分店',1,1,3,1,'5000103');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101004','分配房源',1,1,3,1,'5000104');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101005','更改房源',1,1,3,1,'5000105');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101006','分配子账号',1,1,3,1,'5000106');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101007','更改子账号',1,1,3,1,'5000107');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101008','新建子账号',1,1,3,1,'5000108');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101009','修改子账号',1,1,3,1,'5000109');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('50101010','离职子账号',1,1,3,1,'5000110');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('60101001','修改个人信息',1,1,3,1,'6000101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('60101002','修改密码',1,1,3,1,'6000101');
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES('70101001','删除消息',1,1,3,1,'7000101');



commit;

 





