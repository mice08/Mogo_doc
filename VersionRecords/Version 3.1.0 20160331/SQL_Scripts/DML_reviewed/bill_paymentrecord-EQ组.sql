/*  Database name `mogoroomdb` ，对于提现功能，补充线上历史数据*/
use mogoroomdb;

INSERT INTO bill_paymentrecord
(money,usertype,userid,membernum,toMemberNum,tradetype,businesstype,businessid,createtime,updatedtime,STATUS,notifycount,remark,plat)
SELECT t1.payTotalAccount,1,t1.userid,
(SELECT t2.`accountNum` FROM user_renter t2 WHERE t2.id=t1.userid),(SELECT t2.`accountNum` FROM user_renter t2 WHERE t2.id=t1.userid),
4,215001,t1.businessnum,t1.createTime,t1.updatedtime,
CASE 
  WHEN t1.status=1201 THEN 1
  WHEN t1.status=2001 THEN 2
  WHEN t1.status=3001 THEN 3
END ,
1,
CASE 
  WHEN t1.status=3001 THEN '维金提现失败，提现金额已冲正！'
  ELSE NULL
END ,
1001 
FROM oder_businessorder  t1
WHERE t1.businesstype=215001 AND DATE(t1.createtime)>'2016-03-23';