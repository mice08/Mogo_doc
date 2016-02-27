select
tbl_renter.realName as '租客姓名',
tbl_renter.cellPhone as '租客手机号',
tbl_water.fluctuantMoney as '金额',
tbl_water.fluctuantTime as '入账时间',
tbl_payrecord.outTradeNo as '维金交易号',
case tbl_water.businessType
  when 224001 then '充值'
  when 216001 then '支付预定金'
  when 216002 then '支付首期款'
  when 216003 then '支付常规款'
  when 216004 then '支付水电煤'
end as '操作业务'
from user_wateraccount tbl_water
inner join user_renter tbl_renter on tbl_renter.accountNum = tbl_water.accountNum
inner join bill_paymentrecord tbl_payrecord on tbl_payrecord.businessId = tbl_water.serialNum
where tbl_water.fundSourceType = 1001
order by tbl_water.fluctuantTime 