/*  Database name `mogoroomdb` ，为新帐务添加新帐务明细类型*/
use mogoroomdb;

insert into acct.`acct_billdtltype` (`billDtlType`, `billDtlName`, `status`, `sort`, `usageType`, `displayName`, `remark`) values('10081','账单冲销减免','1','10081','1','账单冲销减免','账单冲销减免');
