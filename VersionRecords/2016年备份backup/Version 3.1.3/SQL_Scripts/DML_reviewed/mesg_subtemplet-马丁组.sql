USE mogoroomdb;

BEGIN;
SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_room_onlineStatus_landlord', '�������¼�', '�������¼�', 1, 2, NOW(), 5, 1, 10);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '�������¼�', '${landlordName}���ã����ķ�Դ${communityName}С��${building}��${unit}��Ԫ${roomNum}�ţ�����˲��ʺ϶���չʾ���ѱ�ƽ̨�������أ����ɣ�${remard}���������ʣ�����ϵĢ���ͷ�400-800-4949', 1, 1, NULL, NULL);

COMMIT;