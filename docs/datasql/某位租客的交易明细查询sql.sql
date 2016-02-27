/*某位租客的交易明细*/
SET @account = 'Inna9288'; /*租客登录账号*/
SELECT  
tbl_water.serialNum AS '交易流水号',
CASE 
	tbl_water.`businessType`
	WHEN 111001 THEN '公司转房租给房东'
	WHEN 211001 THEN '租客转账给房东'
	WHEN 211002 THEN '租客违约定金扣除'
	WHEN 211003 THEN '签约过期租客转账给房东'
	WHEN 224001 THEN '租客余额充值'
	WHEN 215001 THEN '租客提现'
	WHEN 216001 THEN '支付定金'
	WHEN 216002 THEN '租客支付首期款房租账单'
	WHEN 216003 THEN '租客支付常规款房租账单'
	WHEN 216004 THEN '租客支付水电煤账单'
	WHEN 3001 THEN '职业房东余额充值'
	WHEN 3002 THEN '职业房东提现'
	WHEN 3003 THEN '职业房东保证金充值'
	WHEN 3004 THEN '职业房东支付账单'
	WHEN 3005 THEN '职业房东放款'
	WHEN 3006 THEN '职业房东收款'
	WHEN 3007 THEN '职业房东退押金'
	WHEN 3008 THEN '职业房东退定金'
	WHEN 3009 THEN '职业房东退违约金'
	WHEN 3010 THEN '支付房东贷款服务费'
	WHEN 3011 THEN '房东调账'
	WHEN 3012 THEN '提现驳回'
	WHEN 311001 THEN 'BS后台撤销预定单退还租客定金'
	
END AS '业务事项',
CASE 
	tbl_water.fundType
	WHEN 1001 THEN '定金'
	WHEN 1002 THEN '余额'
	WHEN 1003 THEN '网银支付款项'
END AS '账户',
tbl_water.fluctuantMoney AS '金额',
tbl_water.fluctuantTime AS '操作时间'


FROM user_wateraccount tbl_water
INNER JOIN user_renter tbl_renter ON tbl_renter.`accountNum` = tbl_water.`accountNum`
WHERE tbl_renter.account = @account
