/* Database name `mogoroomdb` ，处理历史帐务流水拆分*/
use mogoroomdb;

UPDATE acct.`acct_busibilldtl` SET amount=0-amount WHERE billid IN (1184027,1184704,1193602,1207259) AND  amount>0;


update  acct.`acct_busibilldtl` set donecode = 0-donecode,billid = 0-billId   WHERE  donecode IN (430565,430568);

update  acct.`acct_busibilldtl` set donecode = 0-donecode,billid = 0-billId  WHERE billid  IN (1641660,1641661,1641662,1641663,1641664) AND beforeamount=0 AND donecode IN (658516);


update  acct.`acct_busibilldtl` set donecode = 0-donecode , billid = 0-billId WHERE beforeamount=0 AND billid IN (1165295,1165296,1165498,1165499,1165537,1165538,1165577,1165578,1165610,1165611,1165660,1165661,1165712,1165714,1165761,1165762,1165802,1165803,1165846,1165847,1165865,1165866,1165906,1165907,1165961,1165962,1166005,1166006,1166040,1166042,1166093,1166094,1166130,1166131,1166172,1166173,1166233,1166234,1166279,1166280);


CREATE TABLE wrong_donecode AS SELECT abbd.`doneCode`,abbd.`amount` AS bdamout,ABS(SUM(abbd.`amount`)),(ab.`amount`+ab.`paidPenalty`),ab.* FROM 
acct.acct_bill ab JOIN  acct.`acct_busibilldtl` abbd 
ON ab.`billId` = abbd.`billId` 
WHERE ab.`status` IN (1,3,5)  AND abbd.donecode>0 
GROUP BY abbd.`billId` HAVING ABS(SUM(abbd.`amount`)) !=(ab.`amount`+ab.`paidPenalty`) AND ABS(SUM(abbd.`amount`))/((ab.`amount`+ab.`paidPenalty`))=2;


update  acct.`acct_busibilldtl`  set donecode = 0-donecode WHERE donecode IN (
    select donecode from wrong_donecode
);


/*组合支付的fee*/
INSERT INTO acct.acct_busibillfeedtl (billId, billType, subsId, tradeLogId, recId, busiDtlId, feeAmount, fundChannel, payTime, 
    STATUS, verified, verifyDate, verifyBy, verifyByType, createTime, createBy, createByType, 
    updateTime, updateBy, updateByType,payee,payeeType,userMemo,proofPicGroupId,proofNumber,busiBillId,billAmount,deadline,startDate,endDate)
   SELECT ab.`billId`,ab.`billType`,ab.`subsId`,abr.tradelogid,abbd.`doneCode`,abfeedtl.`id`,abfeedtl.`amount`,abfeedtl.`fundChannel`,IFNULL(abr.origDate,abr.createTime) AS payTime,
    abr.status,abr.verified,abr.verifyDate,abr.verifyPerson,0,abr.createTime,abr.createBy,abr.createByType,
    abr.createTime AS updateTime,abr.createBy AS updateBy,abr.createByType AS updateByType,abr.createBy AS payee,abr.createByType AS payeeType,abr.userMemo ,abfeedtl.proofPicGroupId,abfeedtl.proofNumber ,
    abbd.id,ab.amount,ab.deadline,ab.startDate,ab.endDate
FROM acct.`acct_busibilldtl` abbd 
JOIN acct.acct_bill  ab ON abbd.`billId`=ab.`billId`
JOIN acct.`acct_busifunddtl`   abfunddtl ON  abfunddtl.`acctId`=ab.`acctId`  AND abfunddtl.`doneCode` = abbd.`doneCode`
JOIN acct.`acct_busifeedtl`  abfeedtl ON abfeedtl.`doneCode` = abbd.`doneCode` 
JOIN acct.acct_busirec abr ON abbd.`doneCode` = abr.donecode
WHERE  abbd.donecode >0 and abfunddtl.`amount`<0 AND ab.`billType` !=1006;


/*组合支付的fund*/
INSERT INTO acct.acct_busibillfeedtl (billId, billType, subsId, tradeLogId, recId, busiDtlId, feeAmount, fundChannel, payTime, 
    STATUS, verified, verifyDate, verifyBy, verifyByType, createTime, createBy, createByType, 
    updateTime, updateBy, updateByType,payee,payeeType,userMemo,proofPicGroupId,proofNumber,busiBillId,billAmount,deadline,startDate,endDate)
 SELECT ab.`billId`,ab.`billType`,ab.`subsId`,abr.tradelogid,abbd.`doneCode`,abfunddtl.`id`,ABS(abfunddtl.`amount`),6 AS `fundChannel`,IFNULL(abr.origDate,abr.createTime) AS payTime,
    abr.status,abr.verified,abr.verifyDate,abr.verifyPerson,0,abr.createTime,abr.createBy,abr.createByType,
    abr.createTime AS updateTime,abr.createBy AS updateBy,abr.createByType AS updateByType,abr.createBy AS payee,abr.createByType AS payeeType,abr.userMemo ,proofPicGroupId,proofNumber ,
   abbd.id,ab.amount,ab.deadline,ab.startDate,ab.endDate
FROM acct.`acct_busibilldtl` abbd,
acct.`acct_busifeedtl` abfeedtl,
acct.`acct_busifunddtl`  abfunddtl ,
acct.acct_bill  ab,
acct.acct_busirec abr 
WHERE abbd.`billId`=ab.`billId` AND abfeedtl.`doneCode` = abbd.`doneCode` 
AND abfeedtl.`doneCode` = abfunddtl.`doneCode` AND abfunddtl.`acctId`=ab.`acctId`
AND abfunddtl.`amount`<0 AND ab.`billType` !=1006
AND abbd.`doneCode` = abr.donecode;


/*退款操作*/
INSERT INTO acct.acct_busibillfeedtl (billId, billType, subsId, tradeLogId, recId, busiDtlId, feeAmount, fundChannel, payTime, 
    STATUS, verified, verifyDate, verifyBy, verifyByType, createTime, createBy, createByType, 
    updateTime, updateBy, updateByType,payee,payeeType,userMemo,proofPicGroupId,proofNumber,busiBillId,billAmount,deadline,startDate,endDate)
    SELECT ab.`billId`,ab.`billType`,ab.`subsId`,abr.tradelogid,abbd.`doneCode`,abfeedtl.`id`,abfeedtl.`amount`,abfeedtl.`fundChannel`,IFNULL(abr.origDate,abr.createTime) AS payTime,
    abr.status,abr.verified,abr.verifyDate,abr.verifyPerson,0,abr.createTime,abr.createBy,abr.createByType,
    abr.createTime AS updateTime,abr.createBy AS updateBy,abr.createByType AS updateByType,abr.createBy AS payee,abr.createByType AS payeeType,abr.userMemo ,proofPicGroupId,proofNumber ,
   abbd.id,ab.amount,ab.deadline,ab.startDate,ab.endDate
FROM acct.`acct_busibilldtl` abbd,
acct.`acct_busifeedtl` abfeedtl,
acct.`acct_busifunddtl`  abfunddtl ,
acct.acct_bill  ab,
acct.acct_busirec abr 
WHERE abbd.donecode>0 and abbd.`billId`=ab.`billId` AND abfeedtl.`doneCode` = abbd.`doneCode` 
AND abfeedtl.`doneCode` = abfunddtl.`doneCode` AND abfunddtl.`acctId`=ab.`acctId`
AND ab.`billType`  in (1001,1006)
AND abbd.`doneCode` = abr.donecode ;

/*退款操作2*/
INSERT INTO acct.acct_busibillfeedtl (billId, billType, subsId, tradeLogId, recId, busiDtlId, feeAmount, fundChannel, payTime, 
    STATUS, verified, verifyDate, verifyBy, verifyByType, createTime, createBy, createByType, 
    updateTime, updateBy, updateByType,payee,payeeType,userMemo,proofPicGroupId,proofNumber,busiBillId,billAmount,deadline,startDate,endDate)
SELECT ab.`billId`,ab.`billType`,ab.`subsId`,abr.tradelogid,abbd.`doneCode`,abfunddtl.`id`,abfunddtl.`amount`,6 AS fundChannel ,IFNULL(abr.origDate,abr.createTime) AS payTime,
    abr.status,abr.verified,abr.verifyDate,abr.verifyPerson,0,abr.createTime,abr.createBy,abr.createByType,
    abr.createTime AS updateTime,abr.createBy AS updateBy,abr.createByType AS updateByType,abr.createBy AS payee,abr.createByType AS payeeType,abr.userMemo ,proofPicGroupId,proofNumber ,
   abbd.id,ab.amount,ab.deadline,ab.startDate,ab.endDate
FROM acct.`acct_busibilldtl` abbd 
LEFT JOIN acct.`acct_busifeedtl` abfeedtl ON abfeedtl.`doneCode` = abbd.`doneCode`
JOIN acct.`acct_busifunddtl`  abfunddtl ON abbd.`doneCode` = abfunddtl.`doneCode`
JOIN acct.acct_bill  ab ON abbd.`billId`=ab.`billId`
JOIN acct.acct_busirec abr ON abr.`doneCode` = abbd.`doneCode`
WHERE 
ab.`billType` IN (1006) AND abfeedtl.`id` IS NULL AND abfunddtl.`amount`>0;

/*fee支付*/
INSERT INTO acct.acct_busibillfeedtl (billId, billType, subsId, tradeLogId, recId, busiDtlId, feeAmount, fundChannel, payTime, 
    STATUS, verified, verifyDate, verifyBy, verifyByType, createTime, createBy, createByType, 
    updateTime, updateBy, updateByType,payee,payeeType,userMemo,proofPicGroupId,proofNumber,busiBillId,billAmount,deadline,startDate,endDate)
   SELECT ab.`billId`,ab.`billType`,ab.`subsId`,abr.tradelogid,abbd.`doneCode`,abfeedtl.`id`,0-abbd.`amount`,abfeedtl.`fundChannel`,IFNULL(abr.origDate,abr.createTime) AS payTime,
    abr.status,abr.verified,abr.verifyDate,abr.verifyPerson,0,abr.createTime,abr.createBy,abr.createByType,
    abr.createTime AS updateTime,abr.createBy AS updateBy,abr.createByType AS updateByType,abr.createBy AS payee,abr.createByType AS payeeType,abr.userMemo ,
    abfeedtl.proofPicGroupId,abfeedtl.proofNumber,abbd.id,ab.amount,ab.deadline,ab.startDate,ab.endDate
FROM acct.`acct_busibilldtl` abbd
JOIN acct.`acct_busifeedtl` abfeedtl ON abfeedtl.`doneCode` = abbd.`doneCode` 
JOIN acct.acct_bill  ab ON abbd.`billId`=ab.`billId`  AND ab.`acctId` = abfeedtl.`acctId`
LEFT JOIN acct.`acct_busifunddtl`  abfunddtl ON abfunddtl.`doneCode` = abbd.`doneCode` AND abfunddtl.acctid = ab.acctid
JOIN acct.acct_busirec abr ON abfeedtl.`doneCode` = abr.`doneCode`
WHERE  abbd.donecode>0  and 
ab.`billType` !=1006 AND abfunddtl.id IS NULL  ORDER BY abbd.id DESC ;


/*fund支付*/
INSERT INTO acct.acct_busibillfeedtl (billId, billType, subsId, tradeLogId, recId, busiDtlId, feeamount, fundChannel, payTime, 
    STATUS, verified, verifyDate, verifyBy, verifyByType, createTime, createBy, createByType, 
    updateTime, updateBy, updateByType,payee,payeeType,userMemo,proofPicGroupId,proofNumber,busiBillId,billamount,deadline,startDate,endDate)
   SELECT ab.`billId`,ab.`billType`,ab.`subsId`,abr.tradelogid,abbd.`doneCode`,abfunddtl.`id` AS busiDtlId,abfunddtl.`amount`,6 AS `fundChannel`,IFNULL(abr.origDate,abr.createTime) AS payTime,
    abr.status,abr.verified,abr.verifyDate,abr.verifyPerson,0,abr.createTime,abr.createBy,abr.createByType,
    abr.createTime AS updateTime,abr.createBy AS updateBy,abr.createByType AS updateByType,abr.createBy AS payee,abr.createByType AS payeeType,abr.userMemo ,abfeedtl.proofPicGroupId,abfeedtl.proofNumber 
  	,abbd.id,ab.amount,ab.deadline,ab.startDate,ab.endDate
FROM acct.`acct_busibilldtl` abbd
LEFT JOIN acct.`acct_busifeedtl` abfeedtl ON abfeedtl.`doneCode` = abbd.`doneCode`
JOIN acct.acct_bill  ab ON abbd.`billId`=ab.`billId` 
JOIN acct.`acct_busifunddtl`  abfunddtl ON abfunddtl.`doneCode` = abbd.`doneCode` 
JOIN acct.acct_busirec abr ON abfunddtl.`doneCode` = abr.`doneCode`
WHERE  abbd.donecode>0 AND 
ab.`billType` !=1006 AND abfeedtl.id IS NULL AND abfunddtl.`amount`>0  ORDER BY abbd.id DESC ;


/*冲销支付*/
INSERT INTO acct.acct_busibillfeedtl (billId, billType, subsId, tradeLogId, recId, busiDtlId, feeAmount, fundChannel, payTime, 
    STATUS, verified, verifyDate, verifyBy, verifyByType, createTime, createBy, createByType, 
    updateTime, updateBy, updateByType,payee,payeeType,userMemo,proofPicGroupId,proofNumber,busiBillId,billamount,deadline,startDate,endDate)

    SELECT ab.`billId`,ab.`billType`,ab.`subsId`,abr.tradelogid,abbd.`doneCode`,abbd2.`billId`,
    IF(ab.`billType`=10004,abs(abbd2.`amount`),abs(abbd.amount)),
    109 AS `fundChannel`,IFNULL(abr.origDate,abr.createTime) AS payTime,
    abr.status,abr.verified,abr.verifyDate,abr.verifyPerson,0,abr.createTime,abr.createBy,abr.createByType,
    abr.createTime AS updateTime,abr.createBy AS updateBy,abr.createByType AS updateByType,abr.createBy AS payee,abr.createByType AS payeeType,abr.userMemo ,
    NULL,NULL,abbd.id,ab.amount,ab.deadline,ab.startDate,ab.endDate
FROM acct.`acct_busibilldtl` abbd
JOIN acct.`acct_busibilldtl` abbd2  ON abbd.donecode = abbd2.donecode AND abbd.billid != abbd2.billId 
JOIN acct.acct_bill  ab ON abbd.`billId`=ab.`billId`   
JOIN acct.acct_bill  ab2 ON abbd2.`billId`=ab2.`billId`  
JOIN acct.acct_busirec abr ON abbd.`doneCode` = abr.`doneCode`
WHERE 
abbd.donecode > 0 AND abbd2.donecode>0     AND 
abr.busiType=3011  AND (ab2.`billType`=10004 OR ab.`billType`=10004 ) ORDER BY abbd.id DESC ;