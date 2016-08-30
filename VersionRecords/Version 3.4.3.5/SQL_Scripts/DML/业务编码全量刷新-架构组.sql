/*  Database name `mogoroomdb` 删除重复业务编码*/
use mogoroomdb;
   

delete from `comm_busitype` where busiType in (10101,101);
delete from `comm_busitype` where busiType in (10102,101);
delete from `comm_busitype` where busiType in (10103,101);
delete from `comm_busitype` where busiType in (10104,101);
delete from `comm_busitype` where busiType in (20101,201);
delete from `comm_busitype` where busiType in (20102,201);
delete from `comm_busitype` where busiType in (20103,201);
delete from `comm_busitype` where busiType in (30101,301);
delete from `comm_busitype` where busiType in (40101,401);
delete from `comm_busitype` where busiType in (40103,401);
delete from `comm_busitype` where busiType in (40102,401);
delete from `comm_busitype` where busiType in (50101,501);
delete from `comm_busitype` where busiType in (50102,501);
delete from `comm_busitype` where busiType in (50103,501);
delete from `comm_busitype` where busiType in (50104,501);
delete from `comm_busitype` where busiType in (50105,501);
delete from `comm_busitype` where busiType in (50106,501);
delete from `comm_busitype` where busiType in (160101,1601);
delete from `comm_busitype` where busiType in (160102,1601);
delete from `comm_busitype` where busiType in (160103,1601);
delete from `comm_busitype` where busiType in (160104,1601);
delete from `comm_busitype` where busiType in (120101,1201);
delete from `comm_busitype` where busiType in (60101,601);
delete from `comm_busitype` where busiType in (70101,701);
delete from `comm_busitype` where busiType in (210101,2101);
delete from `comm_busitype` where busiType in (210102,2101);
delete from `comm_busitype` where busiType in (210103,2101);
delete from `comm_busitype` where busiType in (10105);
delete from `comm_busitype` where busiType in (220101,2201);
delete from `comm_busitype` where busiType in (100101,1001);
delete from `comm_busitype` where busiType in (60101,601);

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 101,'财务管理',1,1,1,0,null);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 201,'销售管理',1,1,1,0,null);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 301,'售后管理',1,1,1,0,null);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 401,'房源管理',1,1,1,0,null);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 501,'分店管理',1,1,1,0,null);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 1601,'组织管理',1,1,1,0,null);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 1201,'通用模块',1,1,1,0,null);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 601,'用户管理',1,1,1,0,null);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 701,'消息管理',1,1,1,0,null);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 2101,'房源搜索管理',1,1,1,0,null);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 2201,'数据分析管理',1,1,1,0,null);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 1001,'合同管理',1,1,1,0,null);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 601,'用户管理',1,1,1,0,null);


INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 10101,'账单推送',1,1,2,0,101 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 10102,'数据操作',1,1,2,0,101 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 10103,'钱款操作',1,1,2,0,101 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 10104,'房东自定义',1,1,2,0,101 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 10105,'账单管理',1,1,2,0,101 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 20101,'预约流程',1,1,2,0,201 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 20102,'预定流程',1,1,2,0,201 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 20103,'租约流程',1,1,2,0,201 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 30101,'售后服务',1,1,2,0,301 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 40101,'小区管理',1,1,2,0,401 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 40103,'房源操作',1,1,2,0,401 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 40102,'业主操作',1,1,2,0,401 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 50101,'分店设置',1,1,2,0,501 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 50102,'账号管理',1,1,2,0,501 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 50103,'房源管理',1,1,2,0,501 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 50104,'角色设置',1,1,2,0,501 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 50105,'消息设置',1,1,2,0,501 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 50106,'系统',1,1,2,0,501 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 160101,'房东权限管理',1,1,2,0,1601 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 160102,'角色设置',1,1,2,0,1601 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 160103,'消息类别管理',1,1,2,0,1601 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 160104,'消息模板管理',1,1,2,0,1601 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 120101,'操作日志',1,1,2,0,1201 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 60101,'修改账号',1,1,2,0,601 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 70101,'消息操作',1,1,2,0,701 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 210101,'房源搜索',1,1,2,0,2101 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 210102,'自动联想',1,1,2,0,2101 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 210103,'帮助',1,1,2,0,2101 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 220101,'租户数据分析',1,1,2,0,2201 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 220102,'房东数据分析',1,1,2,0,2101 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 100101,'租约确认',1,1,2,0,1001 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 60102,'房东账号管理',1,1,2,0,601 );
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES( 60103,'租户账号管理',1,1,2,0,601 );



delete from `comm_busitype` where busiType in (10101001);
delete from `comm_busitype` where busiType in (10101002);
delete from `comm_busitype` where busiType in (10101003);
delete from `comm_busitype` where busiType in (10101004);
delete from `comm_busitype` where busiType in (10101005);
delete from `comm_busitype` where busiType in (10101006);
delete from `comm_busitype` where busiType in (10101007);
delete from `comm_busitype` where busiType in (10101008);
delete from `comm_busitype` where busiType in (10101009);
delete from `comm_busitype` where busiType in (10101010);
delete from `comm_busitype` where busiType in (10101011);
delete from `comm_busitype` where busiType in (10101012);
delete from `comm_busitype` where busiType in (10101013);
delete from `comm_busitype` where busiType in (10101014);
delete from `comm_busitype` where busiType in (10101015);
delete from `comm_busitype` where busiType in (10104001);
delete from `comm_busitype` where busiType in (10104002);
delete from `comm_busitype` where busiType in (10104003);
delete from `comm_busitype` where busiType in (10104004);
delete from `comm_busitype` where busiType in (10104005);
delete from `comm_busitype` where busiType in (10105001);
delete from `comm_busitype` where busiType in (10105002);
delete from `comm_busitype` where busiType in (10105003);
delete from `comm_busitype` where busiType in (10105004);
delete from `comm_busitype` where busiType in (10105005);
delete from `comm_busitype` where busiType in (10105006);
delete from `comm_busitype` where busiType in (20101001);
delete from `comm_busitype` where busiType in (20101002);
delete from `comm_busitype` where busiType in (20101003);
delete from `comm_busitype` where busiType in (20101004);
delete from `comm_busitype` where busiType in (20101005);
delete from `comm_busitype` where busiType in (20101006);
delete from `comm_busitype` where busiType in (20101007);
delete from `comm_busitype` where busiType in (20101008);
delete from `comm_busitype` where busiType in (20101009);
delete from `comm_busitype` where busiType in (20101010);
delete from `comm_busitype` where busiType in (20101011);
delete from `comm_busitype` where busiType in (20101012);
delete from `comm_busitype` where busiType in (20101013);
delete from `comm_busitype` where busiType in (20101014);
delete from `comm_busitype` where busiType in (20101015);
delete from `comm_busitype` where busiType in (20101016);
delete from `comm_busitype` where busiType in (20101017);
delete from `comm_busitype` where busiType in (20101018);
delete from `comm_busitype` where busiType in (20101019);
delete from `comm_busitype` where busiType in (30101001);
delete from `comm_busitype` where busiType in (30101002);
delete from `comm_busitype` where busiType in (30101003);
delete from `comm_busitype` where busiType in (30101004);
delete from `comm_busitype` where busiType in (40101001);
delete from `comm_busitype` where busiType in (40101002);
delete from `comm_busitype` where busiType in (40101003);
delete from `comm_busitype` where busiType in (40101004);
delete from `comm_busitype` where busiType in (40101005);
delete from `comm_busitype` where busiType in (40101006);
delete from `comm_busitype` where busiType in (40101007);
delete from `comm_busitype` where busiType in (40101008);
delete from `comm_busitype` where busiType in (40101009);
delete from `comm_busitype` where busiType in (40101010);
delete from `comm_busitype` where busiType in (40101011);
delete from `comm_busitype` where busiType in (40101012);
delete from `comm_busitype` where busiType in (40101013);
delete from `comm_busitype` where busiType in (50101001);
delete from `comm_busitype` where busiType in (50101002);
delete from `comm_busitype` where busiType in (50101003);
delete from `comm_busitype` where busiType in (50101004);
delete from `comm_busitype` where busiType in (50101005);
delete from `comm_busitype` where busiType in (50101006);
delete from `comm_busitype` where busiType in (50101007);
delete from `comm_busitype` where busiType in (50101008);
delete from `comm_busitype` where busiType in (50101009);
delete from `comm_busitype` where busiType in (50101010);
delete from `comm_busitype` where busiType in (50102001);
delete from `comm_busitype` where busiType in (50102002);
delete from `comm_busitype` where busiType in (50102003);
delete from `comm_busitype` where busiType in (50102004);
delete from `comm_busitype` where busiType in (50102005);
delete from `comm_busitype` where busiType in (50102006);
delete from `comm_busitype` where busiType in (50102007);
delete from `comm_busitype` where busiType in (50103001);
delete from `comm_busitype` where busiType in (50103002);
delete from `comm_busitype` where busiType in (50103003);
delete from `comm_busitype` where busiType in (50104001);
delete from `comm_busitype` where busiType in (50104002);
delete from `comm_busitype` where busiType in (50104003);
delete from `comm_busitype` where busiType in (50105001);
delete from `comm_busitype` where busiType in (50105002);
delete from `comm_busitype` where busiType in (50106001);
delete from `comm_busitype` where busiType in (160101001);
delete from `comm_busitype` where busiType in (160101002);
delete from `comm_busitype` where busiType in (160101003);
delete from `comm_busitype` where busiType in (160101004);
delete from `comm_busitype` where busiType in (160101006);
delete from `comm_busitype` where busiType in (160101008);
delete from `comm_busitype` where busiType in (160102001);
delete from `comm_busitype` where busiType in (160102002);
delete from `comm_busitype` where busiType in (160102003);
delete from `comm_busitype` where busiType in (160102004);
delete from `comm_busitype` where busiType in (160102005);
delete from `comm_busitype` where busiType in (160102006);
delete from `comm_busitype` where busiType in (160102007);
delete from `comm_busitype` where busiType in (160102008);
delete from `comm_busitype` where busiType in (160103001);
delete from `comm_busitype` where busiType in (160103002);
delete from `comm_busitype` where busiType in (160103003);
delete from `comm_busitype` where busiType in (160104001);
delete from `comm_busitype` where busiType in (160104002);
delete from `comm_busitype` where busiType in (160104003);
delete from `comm_busitype` where busiType in (160104004);
delete from `comm_busitype` where busiType in (160104005);
delete from `comm_busitype` where busiType in (160104006);
delete from `comm_busitype` where busiType in (120101001);
delete from `comm_busitype` where busiType in (60101001);
delete from `comm_busitype` where busiType in (60101002);
delete from `comm_busitype` where busiType in (60101003);
delete from `comm_busitype` where busiType in (70101001);
delete from `comm_busitype` where busiType in (210101001);
delete from `comm_busitype` where busiType in (210101002);
delete from `comm_busitype` where busiType in (210102001);
delete from `comm_busitype` where busiType in (210103001);
delete from `comm_busitype` where busiType in (50102008);
delete from `comm_busitype` where busiType in (50102009);
delete from `comm_busitype` where busiType in (220101001);
delete from `comm_busitype` where busiType in (220101002);
delete from `comm_busitype` where busiType in (220101003);
delete from `comm_busitype` where busiType in (220101004);
delete from `comm_busitype` where busiType in (220102001);
delete from `comm_busitype` where busiType in (100101001);
delete from `comm_busitype` where busiType in (100101002);
delete from `comm_busitype` where busiType in (60102001);
delete from `comm_busitype` where busiType in (60103002);
delete from `comm_busitype` where busiType in (60103002);


INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10101001,'新增一次账单',1,1,3,1,10101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10101002,'新增多次账单',1,1,3,1,10101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10101003,'修改推送账单',1,1,3,1,10101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10101004,'撤销推送账单',1,1,3,1,10101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10101005,'数据导出',1,1,3,1,10102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10101006,'费用类型变更',1,1,3,1,10102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10101007,'支付处理',1,1,3,1,10103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10101008,'退款审批',1,1,3,1,10103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10101009,'支付密码',1,1,3,1,10103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10101010,'账户充值',1,1,3,1,10103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10101011,'账户提现',1,1,3,1,10103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10101012,'合并支付',1,1,3,1,10103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10101013,'支付押金',1,1,3,1,10103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10101014,'收款处理',1,1,3,1,10103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10101015,'作废收款',1,1,3,1,10103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10104001,'房东添加退房优惠',1,1,3,1,10104);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10104002,'房东添加退房退款',1,1,3,1,10104);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10104003,'房东添加退房收款',1,1,3,1,10104);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10104004,'房东记为退房坏账',1,1,3,1,10104);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10104005,'房东优惠账单',1,1,3,1,10104);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10105001,'账单生成',1,1,3,1,10105);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10105002,'账单作废',1,1,3,1,10105);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10105003,'账单修改',1,1,3,1,10105);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10105004,'账单拆分',1,1,3,1,10105);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10105005,'账单优惠',1,1,3,1,10105);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10105006,'账单合并',1,1,3,1,10105);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(20101001,'新增预约',1,1,3,1,20101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(20101002,'新增预定',1,1,3,1,20102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(20101003,'预定审核',1,1,3,1,20102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(20101004,'预定成功',1,1,3,1,20102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(20101005,'新增签约',1,1,3,1,20103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(20101006,'签约审核',1,1,3,1,20103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(20101007,'签约修改',1,1,3,1,20103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(20101008,'入住人调整',1,1,3,1,20103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(20101009,'合同照片调整',1,1,3,1,20103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(20101010,'订单状态变更',1,1,3,1,20103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(20101011,'新增续约',1,1,3,1,20103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(20101012,'续约修改',1,1,3,1,20103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(20101013,'续约撤销',1,1,3,1,20103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(20101014,'房源开放销售',1,1,3,1,20103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(20101015,'退房账款结算',1,1,3,1,20103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(20101016,'退房处理',1,1,3,1,20103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(20101017,'新增补录租约',1,1,3,1,20103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(20101018,'修改补录租约',1,1,3,1,20103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(20101019,'删除补录租约',1,1,3,1,20103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(30101001,'编辑报修信息',1,1,3,1,30101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(30101002,'解决报修信息',1,1,3,1,30101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(30101003,'编辑投诉信息',1,1,3,1,30101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(30101004,'解决投诉信息',1,1,3,1,30101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(40101001,'新增小区',1,1,3,1,40101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(40101002,'修改小区',1,1,3,1,40101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(40101003,'新增公寓楼',1,1,3,1,40103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(40101004,'修改公寓楼',1,1,3,1,40103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(40101005,'删除公寓楼',1,1,3,1,40103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(40101006,'新增房源',1,1,3,1,40103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(40101007,'修改房源',1,1,3,1,40103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(40101008,'删除房源',1,1,3,1,40103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(40101009,'显示',1,1,3,1,40103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(40101010,'隐藏',1,1,3,1,40103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(40101011,'房态变更',1,1,3,1,40103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(40101012,'新增业主',1,1,3,1,40102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(40101013,'修改业主',1,1,3,1,40102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50101001,'新建分店',1,1,3,1,50101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50101002,'修改分店',1,1,3,1,50101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50101003,'关闭分店',1,1,3,1,50101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50101004,'分配房源',1,1,3,1,50101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50101005,'房源取消关联',1,1,3,1,50101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50101006,'分配子账号',1,1,3,1,50102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50101007,'更改子账号',1,1,3,1,50102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50101008,'新建子账号',1,1,3,1,50102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50101009,'修改子账号',1,1,3,1,50102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50101010,'离职子账号',1,1,3,1,50102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50102001,'移出子账号',1,1,3,1,50102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50102002,'禁用子账号',1,1,3,1,50102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50102003,'启用子账号',1,1,3,1,50102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50102004,'员工总览',1,1,3,1,50102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50102005,'账号登录记录',1,1,3,1,50102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50102006,'批量修改分店',1,1,3,1,50102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50102007,'房东密码修改',1,1,3,1,50102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50102008,'修改个人信息',1,1,3,1,50102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50102009,'修改密码',1,1,3,1,50102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50103001,'批量分配房源',1,1,3,1,50103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50103002,'更改分店',1,1,3,1,50103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50103003,'取消关联分店',1,1,3,1,50103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50104001,'分配角色',1,1,3,1,50104);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50104002,'修改角色 ',1,1,3,1,50104);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50104003,'批量修改角色',1,1,3,1,50104);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50105001,'公司消息接收',1,1,3,1,50105);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50105002,'分店消息接收',1,1,3,1,50105);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50106001,'房东账号登陆',1,1,3,1,50106);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(160101001,'菜单删除 ',1,1,3,1,160101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(160101002,'功能树添加',1,1,3,1,160101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(160101003,'功能树修改',1,1,3,1,160101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(160101004,'功能树删除',1,1,3,1,160101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(160101006,'删除角色',1,1,3,1,160101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(160101008,'给房东配角色',1,1,3,1,160101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(160102001,'新增角色',1,1,3,1,160102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(160102002,'删除角色',1,1,3,1,160102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(160102003,'禁用角色',1,1,3,1,160102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(160102004,'启用角色',1,1,3,1,160102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(160102005,'置顶角色',1,1,3,1,160102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(160102006,'取消置顶',1,1,3,1,160102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(160102007,'修改角色权限',1,1,3,1,160102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(160102008,'修改角色',1,1,3,1,160102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(160103001,'新建类别',1,1,3,1,160103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(160103002,'修改类别',1,1,3,1,160103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(160103003,'删除类别',1,1,3,1,160103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(160104001,'新建模板',1,1,3,1,160104);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(160104002,'修改模板',1,1,3,1,160104);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(160104003,'删除模板',1,1,3,1,160104);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(160104004,'禁用模板',1,1,3,1,160104);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(160104005,'启用模板',1,1,3,1,160104);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(160104006,'修改推送渠道',1,1,3,1,160104);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(120101001,'导出',1,1,3,1,120101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(60101001,'修改个人信息',1,1,3,1,60101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(60101002,'修改密码',1,1,3,1,60101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(60101003,'修改房东服务人',1,1,3,1,60101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(70101001,'删除消息',1,1,3,1,70101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(210101001,'官网房源搜索',1,1,3,1,210101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(210101002,'租客APP房源搜索',1,1,3,1,210101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(210102001,'官网关键字搜索',1,1,3,1,210102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(210103001,'帮助搜索',1,1,3,1,210103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(220101001,'租户搜索过滤',1,1,3,1,220101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(220101002,'租户页面访问',1,1,3,1,220101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(220101003,'租户行为轨迹',1,1,3,1,220101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(220101004,'租户每日注册',1,1,3,1,220101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(220102001,'房东房源体量',1,1,3,1,220102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(100101001,'租户确认在线合同',1,1,3,1,100101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(100101002,'租户确认补录租约',1,1,3,1,100101);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(60102001,'解锁房东账户',1,1,3,1,60102);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(60103002,'修改个人信息',1,1,3,1,60103);
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(60103002,'修改密码',1,1,3,1,60103);


