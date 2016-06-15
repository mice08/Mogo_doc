/* 初始化账单订单对应关系 */
use mogoroomdb;
truncate table bill_account_mapping;
INSERT INTO bill_account_mapping (
	payOrderNo,
	billId,
	billStatus,
	amount,
	amountPaid,
	accountId,
	toAcccountId,
	updateTime,
	orderType,
	orderId
) SELECT
	function_get_payOrderNo (),
	t.billId,
	t.`status`,
	t.amount,
	t.amount - t.unpayAmount,
	t.acctId,
	t.toAcctId,
	NOW(),
	t.orderType,
	t.orderId
FROM
	acct.acct_bill_tmp t;