/*  Database name `mogoroomdb` ���޸�ģ���title*/
use mogoroomdb;

UPDATE `mesg_subtemplet` st
SET st.`templetTitle` = 'ԤԼ�ɹ�'
WHERE
	st.templetId = (
		SELECT
			t.id
		FROM
			mesg_templet t
		WHERE
			t.templetCode = 'sms_appointment_return_success'
	);