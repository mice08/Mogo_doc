/************发布3.1.0脚本************/
INSERT INTO `mesg_templet` (
	`templetCode`,
	`templetName`,
	`templetDesc`,
	`status`,
	`createBy`,
	`createTime`,
	`createByType`,
	`updateBy`,
	`updateTime`,
	`updateByType`,
	`valid`,
	`businessType`
)
VALUES
	(
		'sms_renter_bookOrderSuccess_not_review',
		'房东修改定金后，租客完成定金支付',
		'房东修改定金后，租客完成定金支付',
		'1',
		'2',
		NOW(),
		'4',
		NULL,
		NULL,
		NULL,
		'1',
		'2'
	);

INSERT INTO `mesg_subtemplet` (
	`templetId`,
	`templetType`,
	`templetTitle`,
	`templetContent`,
	`status`,
	`valid`,
	`outTempletId`,
	`jumpCode`
)
VALUES
	(
		(
			SELECT
				t.id
			FROM
				mesg_templet t
			WHERE
				t.templetCode = 'sms_renter_bookOrderSuccess_not_review'
		),
		'1',
		'房东修改定金后，租客完成定金支付',
		'【蘑菇租房】恭喜！您已成功预定${communityName}小区房源，好房子永远属于有所准备的人，请尽快准备签约资料在${signedEndTime}之前完成签约。畅快沟通，从此住的更好！',
		1,
		1,
		NULL,
		NULL
	);
UPDATE mesg_subtemplet t
SET t.templetContent = '[预定成功]恭喜！您预定${communityName}小区房源的订单已通过审核，好房子永远属于有所准备的人，请尽快准备签约资料在${signedEndTime}之前完成签约。',
 t.templetType = '3'
WHERE
	t.templetId = (
		SELECT
			p.id
		FROM
			mesg_templet p
		WHERE
			p.templetCode = 'sms_renter_bookOrderSuccess'
	)
AND t.`status` = '1';