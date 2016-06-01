--
-- 统一修改线下支付的资金渠道为104, 即线下支付(现金)
--

use mogoroomdb;

begin;

-- 确认用、供后面对比
select count(1) from
(
select ab.*, abr.tradelogid, abfd.doneCode, abfd.id feedtlid, atl.fundChannel from acct.acct_bill ab
join acct.acct_tradelog atl on ab.billId=atl.billId
join acct.acct_busirec abr on abr.tradelogid=atl.id
join acct.acct_busifeedtl abfd on abfd.doneCode=abr.doneCode
where ab.status in (3, 4) and atl.fundChannel=abfd.fundChannel
and atl.fundChannel = 7
)tmp;

-- 线下支付tradelog的资金渠道统一修改为104
update acct.acct_tradelog atl
join(
select ab.billid, atl.id tradelogid, atl.fundChannel
from acct.acct_bill ab
join acct.acct_tradelog atl on ab.billId=atl.billId
where ab.status in (3, 4)
and atl.fundChannel=7
) tmp on atl.id=tmp.tradelogid
set  atl.fundChannel = 104, 
atl.remark=concat(atl.remark, '; 线下支付资金渠道统一修改为104'),
atl.updatetime=now();

-- 线下支付acct_busifeedtl的资金渠道统一修改为104
update acct.acct_busifeedtl abfd
join(
select ab.billid, abfd.doneCode, abfd.fundChannel, abfd.id feedtlid
from acct.acct_bill ab
join acct.acct_busibilldtl abbd on ab.billId=abbd.billId
join acct.acct_busirec abr on abbd.doneCode=abr.doneCode
join acct.acct_busifeedtl abfd on abfd.doneCode=abr.doneCode
where ab.status in (3, 4) 
and abfd.fundChannel=7
) tmp on abfd.id=tmp.feedtlid
set  abfd.fundChannel = 104, 
abfd.remark=concat(abfd.remark, '; 线下支付资金渠道统一修改为104');

-- 确认用、期待为0
select count(1) from
(
select ab.*, abr.tradelogid, abfd.doneCode, abfd.id feedtlid, atl.fundChannel from acct.acct_bill ab
join acct.acct_tradelog atl on ab.billId=atl.billId
join acct.acct_busirec abr on abr.tradelogid=atl.id
join acct.acct_busifeedtl abfd on abfd.doneCode=abr.doneCode
where ab.status in (3, 4) and atl.fundChannel=abfd.fundChannel
and atl.fundChannel = 7
)tmp;
commit;
