/* Database name `mogoroomdb` ��������Ϣģ�� */
USE mogoroomdb;

BEGIN;
INSERT INTO mesg_templet (templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid, businessType) VALUES('sms_landlord_guanWangYuyueSuccessNotify_push', '���ԤԼ����', '���ԤԼ����', 1, 2, STR_TO_DATE('2015-12-07 12:35:55','%Y-%m-%d %H:%i:%s'), 3, NULL, NULL, NULL, 1, 1);
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES((SELECT id FROM mesg_templet WHERE templetCode = 'sms_landlord_guanWangYuyueSuccessNotify_push'), 3, 'ԤԼ��������', '${name}��ã�${roomInfo}��Դ����ԤԼ�������󣬴���ʱ�䣺${lookTime}�����������${renterName}���ֻ����룺${renterPhoneNum}���뾡������͵绰��ͨ��ϵ', 1, 1, NULL, NULL);
COMMIT;