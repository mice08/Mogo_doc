/*��Ӿ��вƳ����˵�֧��ʧ��ģ��*/
use mogoroomdb;

INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES('sms_renter_repayFailedWarning','���вƳ����˵�֧��ʧ��','���вƳ����˵�֧��ʧ��','1','2',NOW(),'3',NULL,NOW(),NULL,'1','5');
SELECT @templetid:= (SELECT id FROM mesg_templet WHERE templetCode = 'sms_renter_repayFailedWarning');

INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES(@templetid,'1','���вƳ����˵�֧��ʧ��','��${rentMonth}����𻹿�ʧ�ܣ��������µ�¼Ģ���ⷿAPP����֧������ȷ��֧��ʱ���㹻���${totalAmount}Ԫ��лл��','1','1',NULL,NULL);