/* Database name `mogoroomdb` , ���ʺ���Ϣ����*/ ���Կ������mogoroomdbΪ���Կ���
/*  update by ������ */
use mogoroomdb;
BEGIN;

SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`, `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
 VALUES (@i, 'push_subAccount_add', '�½����˺�', '�½����˺�', '1', '0', '2016-05-21 17:26:46', '4', NULL, NULL, NULL, '1', '10');
SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`, `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES (@ii,@i, '3', '�½����˺�', '${landlordName}���ã���������${num}�����˺ţ�������Ϣ���£�${contents}���뽫�����֪��ӦԱ���������Ʊ��ܡ�', '1', '1', NULL, NULL);


INSERT INTO `mogo_dev`.`mesg_templet` (`id`, `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES (@i, 'push_orgDel_notice', '��֯�䶯����', '��֯����ʱ������Ϣ', '1', '2000031', '2016-07-27 17:42:53', '5', NULL, NULL, NULL, '1', NULL);
INSERT INTO `mogo_dev`.`mesg_subtemplet` (`id`, `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES (@ii, @i, '3', 'ע�⣬������֯�ѷ������', '���ã�����������֯�ѱ����ģ������µ�¼����в鿴���л���', '1', '1', NULL, NULL);



INSERT INTO `mogo_dev`.`mesg_templet` (`id`, `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
 VALUES (@i, 'push_orgAdd_notice', '��֯�䶯����', '������֯������Ϣ', '1', '2000031', '2016-07-27 17:41:31', '5', NULL, NULL, NULL, '1', NULL);
INSERT INTO `mogo_dev`.`mesg_subtemplet` (`id`, `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES (@ii, @i, '3', 'ע�⣬����ӵ���µ���֯', '���ã����ѱ������µ���֯Ȩ�ޣ��������µ�¼��ʼʹ�á�', '1', '1', NULL, NULL);


INSERT INTO `mogo_dev`.`mesg_templet` (`id`, `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES (@i, 'push_roleAdd_notice', '��ɫ�䶯����', '��ɫ������ʾ', '1', '2000031', '2016-07-27 17:34:51', '5', NULL, NULL, NULL, '1', NULL);
INSERT INTO `mogo_dev`.`mesg_subtemplet` (`id`, `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES (@ii, @i, '3', '��ʾ������ӵ���µĽ�ɫ', '���ã����ѱ������µĽ�ɫ���������µ�¼��ʼʹ�á�', '1', '1', NULL, NULL);


INSERT INTO `mogo_dev`.`mesg_templet` (`id`, `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES (@i, 'push_roleDel_notice', '��ɫ�䶯����', '��ɫ������ʾ', '1', '1', '2016-07-21 16:16:01', '5', NULL, NULL, NULL, '1', '10');
INSERT INTO `mogo_dev`.`mesg_subtemplet` (`id`, `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES (@ii, @i, '3', 'ע�⣬���Ľ�ɫ�ѷ������', '���ã����ڱ���֯�ڵĽ�ɫȨ���ѷ�������������µ�¼����в鿴��ʹ�á�', '1', '1', NULL, NULL);

COMMIT;