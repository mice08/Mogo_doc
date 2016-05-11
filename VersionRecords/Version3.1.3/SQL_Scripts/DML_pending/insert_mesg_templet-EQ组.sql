
/* Database name `mogoroomdb` �����������App��Ϣ��ģ�� */
USE mogoroomdb;

BEGIN;
SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'push_renter_noticeLogoff', '�ʺŵ�¼֪ͨ', '�����ʺ����������豸��¼', 1, 2, NOW(), 4, 1, 10);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '�ʺŵ�¼֪ͨ', '�����ʺ����������豸��¼��������������ϵ�ͷ���Ģ���ⷿ-������ס�ø��ã�', 1, 1, NULL, 'MODULE_Login');
COMMIT;
