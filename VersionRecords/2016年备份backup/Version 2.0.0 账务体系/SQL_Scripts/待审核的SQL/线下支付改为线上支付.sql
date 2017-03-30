use mogoroomdb;

BEGIN;

SELECT * FROM user_renter WHERE realName='张乐';

SELECT @amt :=8500;

-- 查询业务账单
SELECT @sbid := sb.id, @uid := sb.userId, sb.* FROM bill_salebill sb WHERE 
sb.userId IN (SELECT id FROM user_renter WHERE realName='张乐')
AND sb.amount= @amt;

-- 查询账务体系账单
SELECT @bid := b.billid , @busitype := bam.orderType, 
@acctid := b.acctId, @toacctid := b.toAcctId, 
b.* FROM acct.acct_bill b JOIN bill_account_mapping bam ON bam.`billId`=b.`billId`
AND bam.`orderId`=@sbid AND bam.`orderType` IN (216002, 216003, 216004)
;
SELECT @wjid :=acct.`wjIdentity`, acct.* FROM acct.`acct_account` acct WHERE acct.`acctId`= @acctid;
SELECT @towjid :=acct.`wjIdentity`, acct.* FROM acct.`acct_account` acct WHERE acct.`acctId`= @toacctid;

SELECT @bdid := bd.billdtlid, bd.* FROM acct.`acct_billdtl` bd WHERE bd.`billId`=@bid;
SELECT @bhid := bh.id, bh.* FROM acct.`acct_bill_chghistory` bh WHERE bh.`billId`=@bid AND bh.`busiType`=1041002;
SELECT @bdhid := bdh.id, bdh.* FROM acct.`acct_billdtl_chghistory` bdh WHERE bdh.`billChgHistoryId`=@bhid;

-- 删除线下支付履历记录
DELETE FROM acct.`acct_billdtl_chghistory` WHERE id=@bdhid;
DELETE FROM acct.`acct_bill_chghistory` WHERE id=@bhid;

-- update billdtl and bill
UPDATE acct.`acct_billdtl` SET `amount` = @amt WHERE billdtlid=@bdid;
UPDATE acct.`acct_bill` b SET b.amount=@amt, b.`unpayAmount`=0,
 b.`status`=1, b.`updateTime`=NOW(), b.`remark`='线下支付改为线上支付'
WHERE b.`billId`=@bid;

--
-- add账单流水
-- FundSourceType: 快钱(1001),支付宝(2001),微信(3001),蘑菇贷(4001),拉卡拉(5001);
-- FundChannelEnum:  (1,"快钱"), (2,"支付宝"), (3,"微信"), (4,"蘑菇贷"), (5,"拉卡拉"), (6,"余额"), (7,"现金");
-- FundTypeEnum:   (101,"基本户"), (102,"保证金"), (103,"定金"), (201,"公司基本户");
-- 
 
 SELECT @sbid, @busitype, @amt, @bid, @acctid, @wjid, @toacctid, @towjid;
 SELECT * FROM `user_wateraccount` uw WHERE uw.`accountNum` = @wjid; 
 SELECT * FROM acct.`acct_busibilldtl` LIMIT 10;
 
 -- add acct_busirec流水
 INSERT INTO acct.`acct_busirec`(doneCode, tradelogid, busiType, STATUS, reRecId, createTime, createBy, `createByType`, channel, remark)
 SELECT @dc:=(SELECT MAX(donecode) + 1 FROM acct.`acct_busirec`),
 0, @busitype, 1, 0, NOW(), 0, 0, 1, CONCAT('add账单流水: sbid=', @sbid, ', billid=', @bid);
 
  -- add acct_busibilldtl流水
 INSERT INTO acct.`acct_busibilldtl`(doneCode, billId, amount, beforeAmount)
 SELECT @dc, @bid, -@amt, @amt;
 
  -- add acct_busifeedtl流水 
INSERT INTO acct.acct_busifeedtl(doneCode, acctId, amount, fundChannel, bankCode, bankCard, remark)
SELECT @dc, @acctid, @amt,
2, -- 支付宝
'', '', CONCAT('add账单流水: sbid=', @sbid, ', billid=', @bid);

  -- add acct_busifeedtl流水 
INSERT INTO acct.acct_busifunddtl (doneCode, acctId, fundType , amount, beforeAmount)
SELECT @dc, @toacctid,
101, -- 基本户
@amt, 0 ;
 
COMMIT;


