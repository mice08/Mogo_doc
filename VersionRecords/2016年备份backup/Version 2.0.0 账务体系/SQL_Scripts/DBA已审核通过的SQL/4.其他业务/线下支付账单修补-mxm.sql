use mogoroomdb;

BEGIN;

DELETE FROM acct.acct_bill_tmp;

-- 业务系统已支付账单迁移到账务系统里(做线下支付处理)
INSERT 
INTO acct.acct_bill_tmp ( 
  billType
  , amount
  , unpayAmount
  , acctId
  , toAcctId
  , STATUS
  , createTime
  , updateTime
  , remark
  , deadline
  , orderId
  , orderType
) 
SELECT DISTINCT 
  CASE WHEN sb.billType = 1011 AND sb.periodStage = 1 THEN  1003 -- 租客支付首期款房租账单(1003, 216002)
  WHEN sb.billType = 1011 AND sb.periodStage > 1 THEN 1004 -- 租客支付常规款房租账单(1004, 216003),
  WHEN sb.billType = 1021 THEN 1005  -- 租客支付水电煤账单(1005, 216004), 
  END billType
  , sb.amount amount
  , 0 unpayAmount 
  , uam.`acctId` acctId
  , uam2.`acctId` toAcctId
  , 3                                             -- 新账单线下支付状态
  , sb.createTime
  , sb.createTime updateTime
  ,CONCAT( '线下支付账单迁移',  curdate())
  , sb.dueDate deadline
  , sb.id orderId  -- 订单号为账单表单号
  , CASE WHEN sb.billType = 1011 AND sb.periodStage = 1 THEN  216002 -- 租客支付首期款房租账单(1004, 216002)
  WHEN sb.billType = 1011 AND sb.periodStage > 1 THEN 216003 -- 租客支付常规款房租账单(1005, 216003),
  WHEN sb.billType = 1021 THEN 216004  -- 租客支付水电煤账单(1006, 216004), 
  END orderType
FROM
  bill_saleBill sb 
  INNER JOIN acct.acct_account uam 
    ON uam.`userId` = sb.`userId` AND uam.userType = 4 -- 租客类型
  INNER JOIN acct.acct_account uam2 
    ON uam2.`userId` = sb.`landlordId` AND uam2.userType = 0 -- 房东类型 
WHERE
  sb.payStatus = 1 -- 支付状态
 AND sb.id IN (SELECT origBillNum FROM temp_q2 WHERE bizStatus=1 AND exempt=1) -- 业务系统已支付账单
 FOR UPDATE  
;

-- 把临时表的新账单信息copy到账单表
INSERT 
INTO acct.acct_bill( 
  `billType`
  , amount
  , unpayAmount
  , `acctId`
  , `toAcctId`
  , status
  , `createTime`
  , `updateTime`
  , remark
  , `origBillId`
  , deadline
)
SELECT 
   `billType`
  , amount
  , unpayAmount
  , `acctId`
  , `toAcctId`
  , status
  , `createTime`
  , `updateTime`
  , CONCAT(LPAD(billId, 8, '0'), '!!做标志后续删除!!', remark)  -- 带上billtmp的billId信息、方便后续关联
  , `origBillId`
  , deadline
FROM acct.acct_bill_tmp
;

-- bill_tmp表的billId更新为bill表中的billId、方便导入到bill_account_mapping表
UPDATE acct.acct_bill_tmp bt,
acct.acct_bill b
SET bt.billId=b.billId
WHERE bt.billId=CAST(LEFT(b.remark, 8) AS UNSIGNED)
AND  b.remark LIKE '%!!做标志后续删除!!%';

-- 去除bill表remark里的billid信息
UPDATE acct.acct_bill b
SET b.remark=SUBSTRING(b.remark, 9 + char_length('!!做标志后续删除!!'))
WHERE b.remark LIKE '%!!做标志后续删除!!%';


-- 为迁移账单建立账单详细
INSERT 
INTO acct.`acct_billDtl`(billId, billDtlType, amount) 
SELECT
  billId
  , billType
  , amount 
FROM
  acct.acct_bill
WHERE remark=CONCAT( '线下支付账单迁移',  curdate())
OR remark=CONCAT( '业务系统未支付账单迁移',  curdate())
; 

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
WHERE  remark=CONCAT( '线下支付账单迁移',  curdate())
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
FROM acct.acct_billdtl bd INNER JOIN acct.acct_bill b 
ON bd.billId = b.billId AND b. remark=CONCAT( '线下支付账单迁移',  curdate())
 INNER JOIN acct.acct_bill_chghistory bh ON bh.billId=b.billId AND bh.busiType=1041002;

-- 变更线下支付账单金额为0
UPDATE acct.acct_bill
SET amount=0,
unpayAmount=0,
updateTime = now()
WHERE remark=CONCAT( '线下支付账单迁移',  curdate())
;

-- 变更线下支付账单详细金额为0
UPDATE  
acct.acct_billdtl bd JOIN acct.acct_bill b ON b.billId = bd.billId
SET bd.amount=0
WHERE b.remark=CONCAT( '线下支付账单迁移',  curdate())
;

COMMIT;
