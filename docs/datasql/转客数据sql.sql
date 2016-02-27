SELECT 
tbl_renter.`realName` AS '租客姓名',
tbl_renter.`cellphone` AS '手机号码',
LEFT(tbl_contract.`contractAutoNum`, LENGTH(tbl_contract.`contractAutoNum`) - 2) AS '订单编号',
DATE_FORMAT(tbl_bill.`dueDate`, '%Y-%m-%d') AS '应付款日期',
tbl_bill.`amount` AS '金额',
CASE 
	tbl_bill.`payStatus` 
	WHEN 1 THEN '已支付'
	WHEN 0 THEN '未支付'
END AS '是否支付',
tbl_bill.paytime AS '支付时间',
tbl_renter.loginDevice AS '最后一次登录设备型号'
FROM bill_salebill tbl_bill

RIGHT JOIN user_renter	tbl_renter ON tbl_renter.`id` = tbl_bill.`userId`
RIGHT JOIN oder_signedorder tbl_signedorder ON tbl_signedorder.`renterId` = tbl_renter.id
RIGHT JOIN cntr_salecontract tbl_contract ON tbl_contract.`renterId` = tbl_renter.id
WHERE 	tbl_contract.`contractAutoNum` LIKE '%OL%'