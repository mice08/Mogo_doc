/************����3.1.0�ű�************/
UPDATE mesg_subtemplet t
SET t.templetContent = '��Ģ���ⷿ�����ã�������δ��ǩԼʱ�������ǩԼ�����Ķ�����ʧЧ��������ת�뷿���˻����������ʣ����뷿����ϵ�˽����顣',
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