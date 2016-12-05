
/* Database name `mogoroomdb` ������ͷ��͵Ķ��ţ����֣���������Ϣģ�� */
USE mogoroomdb;

BEGIN;
SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_renterAddPayPwd', '�״�����֧������֪ͨ', '�״�����֧������֪ͨ', 1, 2, NOW(), 4, 1, 6);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '����֧������ɹ�', '��ϲ�����ѳɹ�����Ģ���֧ⷿ�����룬֧����������ʹ��Ģ���ⷿ�˻����֧�������ֵ��ʽ�䶯ʱ��ƾ֤�������Ʊ��ܡ�Ģ���ⷿ-������ס�ø��ã�', 1, 1, NULL, 'MODULE_MsgDetail');
COMMIT;