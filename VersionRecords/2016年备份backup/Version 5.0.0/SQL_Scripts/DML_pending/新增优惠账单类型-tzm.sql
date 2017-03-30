/*  Database name `mogoroomdb` ，为新帐务页面需求新账单类型*/
use mogoroomdb;

INSERT INTO acct.`acct_billtype` (billType,billName,STATUS,sort,penaltyRate,displayName,remark) VALUES(10010,'退房优惠账单',1,10010,NULL,'退房优惠账单','退房优惠账单');
insert  into acct.`acct_billtypetofundtype`(`billType`,`fromFundType`,`toFundType`) values (10008,101,101);
insert  into acct.`acct_billtypetofundtype`(`billType`,`fromFundType`,`toFundType`) values (10009,101,101);
insert  into acct.`acct_billtypetofundtype`(`billType`,`fromFundType`,`toFundType`) values (10010,101,101);

