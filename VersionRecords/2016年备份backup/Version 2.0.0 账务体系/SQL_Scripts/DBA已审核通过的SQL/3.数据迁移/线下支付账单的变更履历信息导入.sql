-- 
-- 导入线下支付账单的账单变更履历信息。 需要先导入线下支付账单才能执行本脚本
-- 
BEGIN;
truncate table acct.acct_bill_chghistory;
truncate table acct.acct_billdtl_chghistory;

-- 添加账单变更履历
INSERT INTO acct.acct_bill_chghistory(billId, busiType, oldAmount, oldUnpayAmount
, newAmount, newUnpayAmount, createTime, createBy, createByType, channel, remark)
SELECT 
b.billId,
1041002,
b.amount,
b.unpayAmount,
0,
0,
now(),
1,
5,
1,
'导入线下支付账单变更履历'
FROM acct.acct_bill b
WHERE b.status=3;

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
ON bd.billId = b.billId AND b.status = 3
 INNER JOIN acct.acct_bill_chghistory bh ON bh.billId=b.billId AND bh.busiType=1041002;

-- 修改账单
UPDATE
 acct.acct_bill 
SET amount = 0,
unpayAmount = 0,
remark=CONCAT('线下支付账单', amount, '元'),
updateTime=now()
WHERE status=3 -- 线下支付状态
;

-- 修改账单详细
UPDATE
acct.acct_billdtl bd INNER JOIN acct.acct_bill b 
ON bd.billId = b.billId AND b.status = 3
SET bd.amount = 0 ;

COMMIT;


