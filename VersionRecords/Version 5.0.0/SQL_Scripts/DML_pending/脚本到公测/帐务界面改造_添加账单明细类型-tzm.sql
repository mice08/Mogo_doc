/*  Database name `mogoroomdb` ，为新帐务添加新帐务明细类型*/
use mogoroomdb;

insert into acct.`acct_billdtltype` (`billDtlType`, `billDtlName`, `status`, `sort`, `usageType`, `displayName`, `remark`) values('10082','账单优惠','1','10082','1','账单优惠','账单优惠');
