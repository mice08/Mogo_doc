/* 退房结算，进行账务和业务两侧数据同步接口时，将退房日当期的租金账单进行了同步，未判断支付状态。下面是修复脚本 */
use mogoroomdb;

UPDATE bill_salebill
SET Exempt = NULL,
 exempttype = NULL
WHERE
	bill_salebill.id IN (
		SELECT
			bb.id
		FROM
			(
				SELECT
					bs.id
				FROM
					bill_salebill bs,
					(
						SELECT
							osp.checkingoutdate,
							os.id
						FROM
							oder_surrenderapply osp
						LEFT JOIN oder_signedorder os ON osp.signedOrderId = os.id
						WHERE
							osp. STATUS = 2
						AND osp.result IS NOT NULL
						AND date(os.updatetime) >= date('2016-10-24')
						AND os.acctfinished = 1
					) re
				WHERE
					bs.signedorderid = re.id
				AND bs.paystatus = 1
				AND bs.bill_type IN (1004, 1003) and bs.Exempt=1 and bs.exempttype=1
				AND re.checkingoutdate BETWEEN bs.startdate
				AND bs.enddate
			) bb,
			bill_account_mapping bam,
			acct.acct_bill acct
		WHERE
			bb.id = bam.orderid
		AND acct.billid = bam.billid
		AND acct. STATUS = 1
	);

