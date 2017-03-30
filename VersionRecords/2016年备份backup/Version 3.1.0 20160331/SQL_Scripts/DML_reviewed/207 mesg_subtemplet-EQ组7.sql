/************发布3.1.0脚本************/
UPDATE mesg_subtemplet t
SET t.`status` = '0'
WHERE
	t.templetId = (
		SELECT
			tm.id
		FROM
			mesg_templet tm
		WHERE
			tm.templetCode = 'sms_renter_bookOrderSuccess'
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
				tm.id
			FROM
				mesg_templet tm
			WHERE
				tm.templetCode = 'sms_renter_bookOrderSuccess'
		),
		'1',
		'预定成功',
		'恭喜！您已成功预定${communityName}小区房源，好房子永远属于有所准备的人，请尽快准备签约资料在5日内（${signedEndTime}之前）完成签约。畅快沟通，从此住的更好！',
		'1',
		'1',
		NULL,
		'MODULE_OrderList'
	);

