/*新增工作账账单类型*/
USE mogoroomdb;

insert into acct.`acct_billtype` (`billType`, `billName`, `status`, `sort`, `penaltyRate`, `displayName`, `remark`) values('10014','工作帐账单','1','10014',NULL,'工作帐账单','工作帐账单');

insert into acct.`acct_billdtltype` (`billDtlType`, `billDtlName`, `status`, `sort`, `usageType`, `displayName`, `remark`) values('105000','工作帐','1','105000','1','工作帐','工作帐');

INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(10101022,'添加工作账账单',1,1,3,1,10103);
