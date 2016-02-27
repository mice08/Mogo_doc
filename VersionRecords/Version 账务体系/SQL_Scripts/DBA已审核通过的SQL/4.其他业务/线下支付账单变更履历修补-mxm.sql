use mogoroomdb;

BEGIN;

CREATE temporary table billIds
SELECT  b.billId from acct.acct_bill b 
left join (
select billId, sum(oldAmount - newAmount) offlineAmount from acct.acct_bill_chghistory where 
busiType=1041002
group by billId
) pol on pol.billId=b.billId
 where b.status = 3
and pol.offlineAmount is null;

-- 建立线下支付账单变更履历
INSERT 
INTO acct.acct_bill_chghistory( 
   `billId`
  , `busiType`
  , `oldAmount`
  , `oldUnpayAmount`
  , `oldDeadline`
  , `newAmount`
  , `newUnpayAmount`
  , `newDeadline`
  , `createTime`
  , `createBy`
  , `createByType`
  , channel
  , remark
) 
SELECT
billId
  ,1041002
  , amount
  , unpayAmount
  , deadline
  , 0
  , 0
  , deadline
  , now()
  , 1
  , 5
  , 1
  , CONCAT('线下支付', amount, '元')
FROM acct.acct_bill 
WHERE  billId IN (SELECT billId from billIds)
;

-- 添加账单详细变更履历
INSERT INTO  acct.acct_billdtl_chghistory(billChgHistoryId, billId, billDtlId,  billDtlType, oldAmount, newAmount, 
createTime, createBy, createByType )
SELECT 
bh.id,
bh.billId,
bd.billDtlId,
bd.billDtlType,
bd.amount,
0,
now(),
1,
5
FROM acct.acct_billdtl bd 
INNER JOIN acct.acct_bill b 
ON bd.billId = b.billId 
 INNER JOIN acct.acct_bill_chghistory bh ON bh.billId=b.billId AND bh.busiType=1041002
WHERE b.billId IN (SELECT billId from billIds)
;

-- 变更线下支付账单金额为0
UPDATE acct.acct_bill
SET amount=0,
unpayAmount=0,
updateTime = now(),
remark = CONCAT(IFNULL(remark, ''), '添加线下支付账单变更履历')
WHERE billId IN (SELECT billId from billIds)
;

-- 变更线下支付账单详细金额为0
UPDATE  
acct.acct_billdtl bd JOIN acct.acct_bill b ON b.billId = bd.billId
SET bd.amount=0
WHERE b.billId IN (SELECT billId from billIds)
;

COMMIT;
