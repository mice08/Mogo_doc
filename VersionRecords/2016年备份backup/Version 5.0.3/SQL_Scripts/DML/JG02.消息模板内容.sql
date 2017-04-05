/* Database name `mogoroomdb` �����źϲ����� - ��Ϣģ�����ݸ���*/
use mogoroomdb;

BEGIN;

update mesg_subtemplet set templetContent='[Ģ����]�𾴵ķ���������������${renterCount}����ͣ�${renterName}��${rentMonth}������󻹿��գ��붽����ͼ�ʱ���ɣ�����������ɽ�' where templetId=(select id from mesg_templet where templetCode='sms_jyc_bill_dueDate_toLandLord');
update mesg_subtemplet set templetContent='[Ģ����]�𾴵ķ���������${renterCount}����ͣ�${renterName}��${rentMonth}��������ڲ��Ѳ������ɽ���Э���߽����' where templetId=(select id from mesg_templet where templetCode='sms_pay_loan_landlord_overDue');
update mesg_subtemplet set templetContent='[Ģ����]�𾴵ķ���������${renterCount}����ͣ�${renterName}��${rentMonth}���������7��δ�������Ϊ��󻹿����ޣ�����������ʱ����ϵͳ��ǿ���˷���������Ӧ��ص���' where templetId=(select id from mesg_templet where templetCode='sms_pay_loan_landlord_overDue7');

INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES ('sms_partner_loan_repayPlan', '��ͳɹ�֧��', '��ͳɹ�֧��', 1, 2, NOW(), 3, NULL, NULL, NULL, 1, 5);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_repayPlan'), 1, '��ͳɹ�֧��', '[Ģ����]�𾴵ķ���������${renterCount}����ͣ�${renterName}���ѳɹ�֧���������', 1, 1, NULL, NULL);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_repayPlan'), 3, '��ͳɹ�֧��', '[Ģ����]�𾴵ķ���������${renterCount}����ͣ�${renterName}���ѳɹ�֧���������', 1, 1, NULL, NULL);


UPDATE mesg_subtemplet SET templetContent='[Ģ����]�𾴵ķ���������${renterCount}����ͣ�${renterName}�������ڲ��������ɽ�Ϊ��ά��������͵����棬��ע�����ѣ�лл��' 
WHERE templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_overDue');

UPDATE mesg_subtemplet SET templetContent='[Ģ����]�𾴵ķ���������${renterCount}����ͣ�${renterName}��������7�첢�Ѳ������ɽ�Ϊ��ά��������͵����棬��ע�����ѣ����ٲ�ȫ����ɣ����ǽ�������ͣ�лл��' 
WHERE templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_overDue7');


COMMIT;