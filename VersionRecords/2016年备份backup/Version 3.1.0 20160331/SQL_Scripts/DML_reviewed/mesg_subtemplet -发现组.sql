UPDATE mesg_subtemplet su
LEFT JOIN mesg_templet t ON su.templetId = t.id
SET su.templetContent = "���ã����ύ��${mansionName}����${roomType}�������乲${roomNum}�����δͨ�����뼰ʱ���������ύ��ˡ�"
WHERE
	t.templetCode = "sms_flatsType_unVerify_landlord";