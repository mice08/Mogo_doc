/* Database name `mogoroomdb` ��������Ϣģ��*/
use mogoroomdb;


BEGIN;
INSERT INTO `mesg_templet`(templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES('sms_renter_resetPwdNotify', '��������֪ͨ', '��������֪ͨ', 1, 2, NOW(), 4, 1, 10);

SET @i = (SELECT id FROM  mesg_templet WHERE templetCode='sms_renter_resetPwdNotify');
INSERT INTO `mesg_subtemplet`(templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@i, 1, '��������֪ͨ', '�𾴵��û������ã�����${currentTime}ͨ��ͨ��Ģ���ⷿ${channel}������˺�${passwordType}�������Ʊ��棬��ȷ���Ǳ��˲�����', 1, 1, NULL, NULL);
COMMIT;


BEGIN;
INSERT INTO `mesg_templet`(templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES('sms_renter_modifyPhone', '�޸��ֻ�����', '�޸��ֻ�����', 1, 2, NOW(), 4, 1, 10);

SET @i = (SELECT id FROM  mesg_templet WHERE templetCode='sms_renter_modifyPhone');
INSERT INTO `mesg_subtemplet`(templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@i, 1, '�޸��ֻ�����', '�𾴵��û������ã�����${currentTime}ͨ��Ģ���ⷿ${channel}������˺�Ϊ${newCellPhone}�������Ʊ��棬��ȷ���Ǳ��˲�����', 1, 1, NULL, NULL);
COMMIT;