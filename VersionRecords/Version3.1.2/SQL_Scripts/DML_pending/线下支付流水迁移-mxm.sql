use mogoroomdb;

begin;

select @remark:=concat('线下支付迁移到新纪录方式', date_format(now(), '%Y%m%d%H%i%s'));

-- 正常方式线下支付账单处理：log中恢复账单金额信息
update acct.acct_bill ab
join (
SELECT bh.billId, bh.createTime txTime, bh.oldAmount - bh.newAmount AS paidAmount
 FROM acct.acct_bill_chghistory bh 
 join acct.acct_bill ab on ab.billId = bh.billId
 WHERE ab.status = 3 and  bh.busiType = 1041002
GROUP BY bh.billId
)tmp
on ab.billid= tmp.billid
set
ab.amount = tmp.paidAmount, 
ab.unpayAmount = 0,
ab.updateTime = now(),
ab.lastPayTime = tmp.txTime,
ab.remark=@remark;

-- 线下支付且已撤销账单处理：从log中恢复账单金额信息
update acct.acct_bill ab
join (
SELECT bh.billId, bh.createTime txTime, bh.oldAmount - bh.newAmount AS paidAmount
 FROM acct.acct_bill_chghistory bh 
 join acct.acct_bill ab on ab.billId = bh.billId
 WHERE ab.status = 2 and  bh.busiType = 1041002
GROUP BY bh.billId
)tmp
on ab.billid= tmp.billid
set
ab.status = 4, -- 线下支付且已撤销状态
ab.amount = tmp.paidAmount, 
ab.unpayAmount = 0,
ab.updateTime = now(),
ab.lastPayTime = tmp.txTime,
ab.remark=@remark;


-- 添加tradelog
INSERT 
INTO acct.acct_tradelog( `soDoneCode`, `busiType`, channel, `fundChannel`, `useFund`,
 `billId`, `createTime`, `createByType`, `createBy`, `updateTime`, status, remark
) 
select 
-1 soDoneCode,
bam.orderType busiType,
3 channel,
7 fundChannel,
0 useFund,
ab.billid,
now() createTime,
5 createByType,
1 createBy,
now() updateTime,
1 status, 				-- 支付完成
@remark
from acct.acct_bill ab join bill_account_mapping bam
on ab.billid= bam.billid and ab.remark=@remark;

-- 新的tradelog账单对应关系
INSERT 
INTO acct.acct_tradelog_bill(tradlogid, billid) 
select 
tl.id tradelogid,
tl.billId
from acct.acct_tradelog tl
where remark=@remark;

-- 添加主流水
INSERT 
INTO acct.acct_busirec( 
   tradelogid
  , `busiType`
  , status
  , `reRecId`
  , `createTime`
  , `createBy`
  , `createByType`
  , channel
  , remark
) 
select 
tl.id tradelogid,
tl.busiType,
1 status,
0 reRecId,
tl.createTime,
tl.createBy,
tl.createByType,
tl.channel,
tl.remark
from acct.acct_tradelog tl
where remark=@remark;

-- 添加账单流水
INSERT 
INTO acct.acct_busibilldtl( 
  `doneCode`
  , `billId`
  , amount
  , `beforeAmount`
  , `penaltyAmount`
) 
select 
abr.doneCode,
ab.billId,
ab.amount,
ab.amount beforeAmount,
0 penaltyAmount
from
 acct.acct_busirec abr
join  acct.acct_tradelog atl on atl.id = abr.tradelogid
join acct.acct_bill ab on ab.billId = atl.billId and atl.remark=@remark;

-- 添加出款侧的支付流水
INSERT 
INTO acct.acct_busifeedtl( 
   `doneCode`
  , `acctId`
  , amount
  , `fundChannel`
  , `bankCode`
  , `bankCard`
  , remark
) 
select 
abr.doneCode,
ab.acctId,
ab.amount,
atl.fundChannel,
'' bankCode,
'' bankCard,
@remark
from
 acct.acct_busirec abr
join  acct.acct_tradelog atl on atl.id = abr.tradelogid
join acct.acct_bill ab on ab.billId = atl.billId and atl.remark=@remark;

-- 添加入款侧的支付流水(提现)
INSERT 
INTO acct.acct_busifeedtl( 
   `doneCode`
  , `acctId`
  , amount
  , `fundChannel`
  , `bankCode`
  , `bankCard`
  , remark
) 
select 
abr.doneCode,
ab.toAcctId,
-ab.amount amount,
atl.fundChannel,
'' bankCode,
'' bankCard,
@remark
from
 acct.acct_busirec abr
join  acct.acct_tradelog atl on atl.id = abr.tradelogid
join acct.acct_bill ab on ab.billId = atl.billId and atl.remark=@remark;



commit;


