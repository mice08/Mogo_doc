use mogoroomdb;
INSERT INTO acct.acct_account(userid,usertype,wjidentity,createTime,updateTime,acctId) SELECT renter.id AS userId, 4 AS userType,renter.memberNum AS wjIdentity,NOW() AS createTime,NOW() updateTime,'1122334400' AS acctId FROM user_renter renter WHERE membernum IS NOT NULL;


UPDATE acct.acct_account SET acctid = CONCAT(10000000+id, FLOOR(10 + (RAND() * 89))) WHERE acctid ='1122334400';


INSERT INTO acct.acct_account(userid,usertype,wjidentity,createTime,updateTime,acctId) SELECT landlord.id AS userId, 0 AS userType,landlord.memberNum AS wjIdentity,NOW() AS createTime,NOW() updateTime,'1122334400' AS acctId FROM user_landlord landlord     WHERE NAME NOT LIKE '%拉卡拉%' AND NAME NOT LIKE '%支付宝%' AND NAME NOT LIKE '%微信%' AND memberNum IS NOT NULL;


UPDATE acct.acct_account SET acctid = CONCAT(10000000+id, FLOOR(10 + (RAND() * 89))) WHERE acctid ='1122334400';

insert into acct.acct_account(userid,usertype,wjidentity,createTime,updateTime,acctId) values(-1,-1,288888888888,now(),now(),10000);

replace into user_account_mapping (acctId,wjIdentity,createTime,updateTime,userId,userType) select acctId,wjIdentity,createTime,updateTime,userId,userType from acct.acct_account;