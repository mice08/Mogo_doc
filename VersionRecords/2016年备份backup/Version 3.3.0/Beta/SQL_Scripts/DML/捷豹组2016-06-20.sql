UPDATE comm_dictionary t
SET t.`status` = '0'
WHERE
	t.`code` = 'pay_ByThird-1'
AND t.groupName = 'pay_ByThird'
AND t.enValue = 'alipay';