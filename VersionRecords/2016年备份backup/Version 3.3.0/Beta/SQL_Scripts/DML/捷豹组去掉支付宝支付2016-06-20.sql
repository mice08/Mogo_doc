use mogoroomdb;
UPDATE comm_dictionary t
SET t.`status` = '1'
WHERE
	t.`code` = 'pay_ByThird-1'
AND t.groupName = 'pay_ByThird'
AND t.enValue = 'alipay';

UPDATE comm_dictionary t
SET t.`status` = '0'
WHERE
	t.`code` = 'pay_ByThird-2'
AND t.groupName = 'pay_ByThird'
AND t.enValue = 'wx';