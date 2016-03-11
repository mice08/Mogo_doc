-- 
-- 水电煤账单类型(1005) 统一变更为房东自定义账单(20001)
--

use mogoroomdb;

begin;
-- 变更账单表
update acct.acct_bill
set billType=20001, 
remark='水电煤账单类型(1005) 统一变更为房东自定义账单(20001)',
updateTime=now()
where billType=1005;

-- 变更房间价格明细表
update  flat_roompricedtl
set  billType=20001 where billType=1005;

-- 确认
select count(1) from acct.acct_bill where billType=1005;
select count(1) from flat_roompricedtl where billType=1005;

commit;

