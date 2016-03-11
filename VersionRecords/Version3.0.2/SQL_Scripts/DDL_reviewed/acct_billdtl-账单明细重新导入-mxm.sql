use mogoroomdb;

begin;
-- 确认业务系统、账务系统中、账单金额不等的首期款、水电煤账单不存在。期待结果为0条记录。
SELECT
  sb.id salebillid
  , sb.billType
  , sb.bill_type
  , sb.amount
  , bam.orderType
  , b.billId
  , b.billType
  , b.status
  , b.amount 
FROM
  `bill_salebill` sb JOIN `bill_account_mapping` bam 
    ON bam.`orderId` = sb.`id` 
    AND bam.`orderType` IN (216002, 216004) JOIN acct.acct_bill b 
    ON b.billid = bam.`billId` 
WHERE
  b.status IN (0, 1) 
  AND sb.amount <> b.amount; 

-- 确认常规款账单的账单明细是正确的。期待结果为0条记录。
SELECT
  sb.id salebillid
  , sb.billType
  , sb.amount
  , ssa.billType
  , ssa.billDtlType
  , ssa.money
  , b.billId
  , b.billType
  , b.amount
  , bd.billdtltype
  , bd.amount 
FROM
  `bill_salebill` sb JOIN `bill_saleshouldaccount` ssa 
    ON ssa.`saleBillId` = sb.`id` JOIN `bill_account_mapping` bam 
    ON bam.`orderId` = sb.`id` 
    AND bam.`orderType` IN (216003) JOIN acct.acct_bill b 
    ON b.billid = bam.`billId` JOIN acct.acct_billdtl bd 
    ON bd.billid = b.billid 
WHERE
  bd.billdtltype <> ssa.billdtltype; 

-- 确认首期款、水电煤账单在未支付/支付完成状态下、不存在变更履历的记录。期待结果为0条记录。
SELECT
  b.*
  , bd.* 
FROM
  acct.acct_bill b JOIN bill_account_mapping bam 
    ON bam.billId = b.billId 
    AND bam.`orderType` IN (216002, 216004) JOIN acct.acct_billdtl bd 
    ON bd.billId = b.billId 
WHERE
  b.status IN (0, 1) 
  AND EXISTS ( 
    SELECT
      * 
    FROM
      acct.acct_billdtl_chghistory bdh 
    WHERE
      bdh.billDtlId = bd.billDtlId
  ); 

-- 确认账单金额与要导入的账单明细金额相等。期待结果为0条记录。
SELECT
  * 
FROM
  acct.acct_bill b JOIN ( 
    SELECT
      b.billid
      , SUM(ssa.money) amount 
    FROM
      `bill_salebill` sb JOIN `bill_saleshouldaccount` ssa 
        ON ssa.`saleBillId` = sb.`id` JOIN `bill_account_mapping` bam 
        ON bam.`orderId` = sb.`id` 
        AND bam.`orderType` IN (216002, 216004) JOIN acct.acct_bill b 
        ON b.billid = bam.`billId` 
    WHERE
      b.status IN (0, 1) 
    GROUP BY
      b.billid
  ) bd 
    ON b.billId = bd.billid 
    AND b.amount <> bd.amount; 

-- 删除未支付/支付完成状态下的首期款、水电煤账单的账单明细
DELETE FROM acct.acct_billdtl 
WHERE
  billId IN ( 
    SELECT
      b.billid 
    FROM
      acct.acct_bill b JOIN bill_account_mapping bam 
        ON bam.billId = b.billId 
        AND bam.`orderType` IN (216002, 216004) 
    WHERE
      b.status IN (0, 1)
  ); 

-- 重新导入未支付/支付完成状态下的首期款、水电煤账单的账单明细
INSERT 
INTO acct.acct_billdtl(billId, billDtlType, amount) 
SELECT
  b.billId
  , ssa.billDtlType
  , ssa.money 
FROM
  `bill_salebill` sb JOIN `bill_saleshouldaccount` ssa 
    ON ssa.`saleBillId` = sb.`id` JOIN `bill_account_mapping` bam 
      ON bam.`orderId` = sb.`id` 
      AND bam.`orderType` IN (216002, 216004) JOIN acct.acct_bill b 
        ON b.billid = bam.`billId` 
WHERE
  b.status IN (0, 1); 

commit;

