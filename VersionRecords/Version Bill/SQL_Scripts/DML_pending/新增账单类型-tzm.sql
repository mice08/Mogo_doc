/*  Database name `mogoroomdb` ，为新帐务页面需求新账单类型*/
use mogoroomdb;

INSERT INTO acct.`acct_billtype` (billType,billName,STATUS,sort,penaltyRate,displayName,remark) VALUES(10008,'押金账单',1,10008,NULL,'押金账单','');
INSERT INTO acct.`acct_billtype` (billType,billName,STATUS,sort,penaltyRate,displayName,remark) VALUES(10009,'逆向退房账单',1,10009,NULL,'逆向退房账单','');
