/*  Database name `mogoroomdb` ，修改模板的title*/
use mogoroomdb;

UPDATE `mesg_subtemplet` st
SET st.`templetTitle` = '预约成功'
WHERE
	st.templetId = (
		SELECT
			t.id
		FROM
			mesg_templet t
		WHERE
			t.templetCode = 'sms_appointment_return_success'
	);