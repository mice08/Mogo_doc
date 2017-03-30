/*  Database name `mogoroomdb` ，初始化房东租金宝费率*/ 
use mogoroomdb; 
 
 
INSERT INTO loan_landlord_fee(landlordId,MONTH,aLevelFee,bLevelFee,cLevelFee,dLevelFee,createby,createtime,updateby,updatetime)
SELECT  llc.landlordId, 3 MONTH, 600 aLevelFee, 700 bLevelFee, 700 cLevelFee, 700 dLevelFee, 1 createby, NOW() createtime,  1 updateby, NOW() updatetime FROM  loan_landlord_credit llc 
UNION
SELECT  llc.landlordId, 4 MONTH, 600 aLevelFee, 700 bLevelFee, 700 cLevelFee, 700 dLevelFee, 1 createby, NOW() createtime,  1 updateby, NOW() updatetime FROM  loan_landlord_credit llc 
UNION
SELECT  llc.landlordId, 5 MONTH, 600 aLevelFee, 700 bLevelFee, 700 cLevelFee, 700 dLevelFee, 1 createby, NOW() createtime,  1 updateby, NOW() updatetime FROM  loan_landlord_credit llc 
UNION
SELECT  llc.landlordId, 6 MONTH, 600 aLevelFee, 700 bLevelFee, 700 cLevelFee, 700 dLevelFee, 1 createby, NOW() createtime,  1 updateby, NOW() updatetime FROM  loan_landlord_credit llc 
UNION
SELECT  llc.landlordId, 7 MONTH, 600 aLevelFee, 700 bLevelFee, 700 cLevelFee, 700 dLevelFee, 1 createby, NOW() createtime,  1 updateby, NOW() updatetime FROM  loan_landlord_credit llc 
UNION
SELECT  llc.landlordId, 8 MONTH, 600 aLevelFee, 700 bLevelFee, 700 cLevelFee, 700 dLevelFee, 1 createby, NOW() createtime,  1 updateby, NOW() updatetime FROM  loan_landlord_credit llc 
UNION
SELECT  llc.landlordId, 9 MONTH, 600 aLevelFee, 700 bLevelFee, 700 cLevelFee, 700 dLevelFee, 1 createby, NOW() createtime,  1 updateby, NOW() updatetime FROM  loan_landlord_credit llc 
UNION
SELECT  llc.landlordId, 10 MONTH, 600 aLevelFee, 700 bLevelFee, 700 cLevelFee, 700 dLevelFee, 1 createby, NOW() createtime,  1 updateby, NOW() updatetime FROM  loan_landlord_credit llc 
UNION
SELECT  llc.landlordId, 11 MONTH, 600 aLevelFee, 700 bLevelFee, 700 cLevelFee, 700 dLevelFee, 1 createby, NOW() createtime,  1 updateby, NOW() updatetime FROM  loan_landlord_credit llc 
UNION
SELECT  llc.landlordId, 12 MONTH, 600 aLevelFee, 700 bLevelFee, 700 cLevelFee, 700 dLevelFee, 1 createby, NOW() createtime,  1 updateby, NOW() updatetime FROM  loan_landlord_credit llc 
;