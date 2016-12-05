use mogoroomdb;

begin;

-- 删除账单明细履历表中的垃圾数据
create temporary table errorbdhids SELECT bdh.id FROM acct.acct_billdtl_chghistory bdh
    LEFT JOIN acct.acct_bill_chghistory bh ON bh.`id`=bdh.`billChgHistoryId`    
    LEFT JOIN acct.acct_billdtl bd ON bd.`billDtlId`=bdh.`billDtlId`    
 WHERE 
 bh.`id` IS NULL
 OR bd.`billDtlId` IS NULL
 OR bd.`billId` <> bh.`billId`;
delete from acct.acct_billdtl_chghistory where id in (select id from errorbdhids);

-- 
-- 
-- 水电煤账单类型(1005) 统一变更为房东自定义账单(20001)
--
-- 变更账单表
update acct.acct_bill
set billType=20001, 
remark='水电煤账单类型(1005) 统一变更为房东自定义账单(20001)',
updateTime=now()
where billType=1005;

-- 变更房间价格明细表
update  flat_roompricedtl set  billType=20001 where billType=1005;

-- 常规款账单明细类型由[租客支付常规款账单1004]统一变更为[房租10002]
update acct.acct_billdtl set billDtlType=10002 where billDtlType=1004;
update flat_roompricedtl set billDtlType =10002 where billDtlType=1004;
update acct.acct_billdtl_chghistory set billDtlType=10002 where billDtlType=1004;





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
SELECT  * FROM
  acct.acct_bill b JOIN bill_account_mapping bam  ON bam.billId = b.billId   AND bam.`orderType` IN (216002, 216004)
  JOIN acct.acct_billdtl bd  ON bd.billId = b.billId 
  JOIN  acct.acct_billdtl_chghistory bdh ON  bdh.billDtlId = bd.billDtlId
  JOIN  acct.acct_bill_chghistory bh ON bh.`id`=bdh.`billChgHistoryId` AND bh.`billId`=b.`billId`
WHERE
  b.status IN (0, 1); 

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

