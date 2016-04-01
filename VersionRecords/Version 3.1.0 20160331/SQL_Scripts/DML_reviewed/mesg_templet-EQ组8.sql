/************����3.1.0�ű�************/
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
		'�����޸Ķ���������ɶ���֧��',
		'�����޸Ķ���������ɶ���֧��',
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
		'�����޸Ķ���������ɶ���֧��',
		'��Ģ���ⷿ����ϲ�����ѳɹ�Ԥ��${communityName}С����Դ���÷�����Զ��������׼�����ˣ��뾡��׼��ǩԼ������${signedEndTime}֮ǰ���ǩԼ�����칵ͨ���Ӵ�ס�ĸ��ã�',
		1,
		1,
		NULL,
		NULL
	);
UPDATE mesg_subtemplet t
SET t.templetContent = '[Ԥ���ɹ�]��ϲ����Ԥ��${communityName}С����Դ�Ķ�����ͨ����ˣ��÷�����Զ��������׼�����ˣ��뾡��׼��ǩԼ������${signedEndTime}֮ǰ���ǩԼ����Ģ���ⷿ-������ס�ø��á�',
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