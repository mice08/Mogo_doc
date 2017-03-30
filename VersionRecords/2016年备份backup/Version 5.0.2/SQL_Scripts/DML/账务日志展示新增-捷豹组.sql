USE mogoroomdb;
/*新增账单管理以及对应的子类型*/
insert into `comm_busitype` (`busiType`, `busiName`, `status`, `sort`, `parentId`, `level`, `isLeaf`) values('10105','账单管理','1','1','101','2','0');
insert into `comm_busitype` (`busiType`, `busiName`, `status`, `sort`, `parentId`, `level`, `isLeaf`) values('10105001','账单生成','1','1','10105','3','1');
insert into `comm_busitype` (`busiType`, `busiName`, `status`, `sort`, `parentId`, `level`, `isLeaf`) values('10105002','账单作废','1','1','10105','3','1');
insert into `comm_busitype` (`busiType`, `busiName`, `status`, `sort`, `parentId`, `level`, `isLeaf`) values('10105003','账单修改','1','1','10105','3','1');
insert into `comm_busitype` (`busiType`, `busiName`, `status`, `sort`, `parentId`, `level`, `isLeaf`) values('10105004','账单拆分','1','1','10105','3','1');
insert into `comm_busitype` (`busiType`, `busiName`, `status`, `sort`, `parentId`, `level`, `isLeaf`) values('10105005','账单优惠','1','1','10105','3','1');
insert into `comm_busitype` (`busiType`, `busiName`, `status`, `sort`, `parentId`, `level`, `isLeaf`) values('10105006','账单合并','1','1','10105','3','1');
insert into `comm_busitype` (`busiType`, `busiName`, `status`, `sort`, `parentId`, `level`, `isLeaf`) values('10105007','设定可入住日','1','1','10105','3','1');



