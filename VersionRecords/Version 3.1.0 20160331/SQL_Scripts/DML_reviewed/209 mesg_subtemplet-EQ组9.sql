/************发布3.1.0脚本************/
use mogoroomdb;
UPDATE mesg_subtemplet t
SET t.templetContent = '【蘑菇租房】您好，由于您未在签约时限内完成签约，您的订单已失效，定金已转入房东账户。若有疑问，请与房东联系了解详情。',
 t.templetType = '1'
WHERE
	t.templetId = (
		SELECT
			p.id
		FROM
			mesg_templet p
		WHERE
			p.templetCode = 'sms_renter_signInvalid_timing'
	)
AND t.`status` = '1';