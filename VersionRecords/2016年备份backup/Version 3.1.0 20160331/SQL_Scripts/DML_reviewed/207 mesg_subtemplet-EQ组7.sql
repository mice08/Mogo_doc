/************����3.1.0�ű�************/
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
		'Ԥ���ɹ�',
		'��ϲ�����ѳɹ�Ԥ��${communityName}С����Դ���÷�����Զ��������׼�����ˣ��뾡��׼��ǩԼ������5���ڣ�${signedEndTime}֮ǰ�����ǩԼ�����칵ͨ���Ӵ�ס�ĸ��ã�',
		'1',
		'1',
		NULL,
		'MODULE_OrderList'
	);

