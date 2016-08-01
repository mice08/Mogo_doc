/* Database name `mogoroomdb` , ���ʺ���Ϣ����*/
/*  update by ������ */
use mogoroomdb;

BEGIN;

SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`, `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
 VALUES (@i, 'push_subAccount_add', '�½����˺�', '�½����˺�', '1', '0', '2016-05-21 17:26:46', '4', NULL, NULL, NULL, '1', '10');
SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`, `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES (@ii,@i, '3', '�½����˺�', '${landlordName}���ã���������${num}�����˺ţ�������Ϣ���£�${contents}���뽫�����֪��ӦԱ���������Ʊ��ܡ�', '1', '1', NULL, NULL);

SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`, `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES (@i, 'push_subAccount_modify', '�޸����˺�', '�޸����˺�', '1', '0', '2016-05-23 19:16:24', '4', NULL, NULL, NULL, '1', '10');
SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`, `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES (@ii,@i, '3', '�޸����˺�', '${landlordName}���ã����޸������˺ţ�${name}���µ��������£�${contents}���뽫�����֪��ӦԱ���������Ʊ��ܡ�', '1', '1', NULL, NULL);

SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`, `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES (@i, 'sms_subAccount_addPhone', '���˺��ֻ���', '���˺��ֻ���', '1', '0', '2016-05-24 19:22:53', '4', NULL, NULL, NULL, '1', '10');
SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`, `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES (@ii,@i, '1', '�����½����˺�', '${subName}���ã������˺��Ѵ����ɹ�����ʹ�ñ��ֻ��ŵ�¼Ģ�����App����ʼ��������ѯ������Ϊ���˺Ű�ȫ�����ڳ��ε�¼ʱ�޸����롣�������http://mogo.help/dl ', '1', '1', NULL, NULL);

SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`, `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES (@i, 'sms_subAccount_modifyPhoneN', '�����޸����˺ŵ绰', '���˺��ֻ��ţ��£�', '1', '0', '2016-05-23 19:22:56', '4', NULL, NULL, NULL, '1', '10');
SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`, `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES (@ii,@i, '1', '�����޸����˺ŵ绰', '${subName}���ã������˺ŵ绰�Ѹ��ģ������������루��ѯ����������ʹ�ñ��ֻ������µ�¼Ģ�����App���޸����롣', '1', '1', NULL, NULL);


SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`, `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES (@i, 'sms_subAccount_modifyPhoneO', '�����޸����˺ŵ绰', '���˺��ֻ��ţ��ɣ�', '1', '0', '2016-05-23 19:25:51', '4', NULL, NULL, NULL, '1', '10');
SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`, `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES (@ii,@i, '1', '�����޸����˺ŵ绰', '${subName}���ã��������Ѻ������˺Ž����ʹ�����ֻ��Ž��е�¼��', '1', '1', NULL, NULL);

SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`, `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES (@i, 'sms_subAccount_resetPassWord', '�����޸�����������', '�����޸�����������', '1', '0', '2016-05-23 19:28:50', '4', NULL, NULL, NULL, '1', '10');
SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`, `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES (@ii,@i, '1', '�����޸�����������', '${subName}���ã������������óɹ���������ѯ��������ʹ�ñ��ֻ������µ�¼��Ģ�����App�����޸����롣', '1', '1', NULL, NULL);



COMMIT;






