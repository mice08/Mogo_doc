/* Database name `mogoroomdb` ��������Ϣģ�� */
use mogoroomdb;

INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES ( 'email_employee_restPassword', '��̨BS��½��������', '��̨BS��½��������', '1', '2', '2016-04-22 16:10:49', '5', NULL, NULL, NULL, '1', '10');

INSERT INTO `mesg_subtemplet` ( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)

VALUES ( (SELECT id FROM mesg_templet WHERE templetCode='email_employee_restPassword'), '2', '��½�������óɹ�', '���ĺ�̨BS��¼�����ѱ�����Ϊ��123456�����뾡���¼��̨�޸����롣', '1', '1', NULL, NULL);
