/*  Database name `mogoroomdb` ，房东提现功能，补充线上历史数据*/
use mogoroomdb;

INSERT INTO bill_paymentrecord
(money,usertype,userid,membernum,tradetype,businesstype,businessid,createtime,updatedtime,STATUS,notifycount,remark)
SELECT 
-(t1.payTotalAccount) AS money,
2 AS usertype,
t1.userid AS userid,
(SELECT t2.memberNum FROM user_landlord t2 WHERE t2.id=t1.userid) AS membernum,
4 AS tradetype,
3002 AS businesstype,
t1.businessnum AS businessid,
t1.createtime AS createtime,
t1.updatedtime AS updatedtime,
CASE
	WHEN (SELECT COUNT(1) FROM user_wateraccount uw WHERE uw.accountNum=(SELECT t2.accountNum FROM user_landlord t2 WHERE t2.id=t1.userid) AND uw.businessType=3017 AND uw.fundType=1008 AND uw.serialNum=t1.businessNum)>0 THEN 3
	ELSE 2
END STATUS,
1 AS notifycount,
CASE
	WHEN (SELECT COUNT(1) FROM user_wateraccount uw WHERE uw.accountNum=(SELECT t2.accountNum FROM user_landlord t2 WHERE t2.id=t1.userid) AND uw.businessType=3017 AND uw.fundType=1008 AND uw.serialNum=t1.businessNum)>0 THEN '维金提现失败，提现金额已冲正！'
	ELSE NULL
END remark
FROM oder_businessorder t1
WHERE t1.businesstype=3002 AND DATE(t1.createtime)>'2016-03-23';