/* Database name `mogoroomdb` ��������Ϣģ�� */
use mogoroomdb;

 INSERT INTO `mesg_templet` ( `templetCode`,`templetName`,`templetDesc`,`status`, `createBy`, `createTime`,`createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
 VALUES('sms_additional_renter','��¼��Լ����','��¼��Լ����',1,2,NOW(),5,NULL,NULL,NULL,1,3);
 
 INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
 VALUES((SELECT id FROM mesg_templet WHERE templetCode='sms_additional_renter'),1,'��¼��Լ����','${renterName}���ã�����ס��${flatInfo}�ķ�����Ϊ��¼����������Լ����ʹ��Ģ���ⷿAPP��¼��������˺ţ��˺ţ�${cellphone}�����룺${originPwd}��ȷ����Լ��ȷ�������������ֱ��ͨ��Ģ���ⷿAPP֧��ʣ������˵���Ģ���ⷿAPP���ص�ַhttp://www.mogoroom.com/pages/activity/AppDown.jsp ����¼���뼰ʱ�޸ĺ������˺���Ϣ�����������뼰ʱ�뷿����ϵ��',1,1,NULL,NULL);
 
 
 INSERT INTO `mesg_templet` ( `templetCode`,`templetName`,`templetDesc`,`status`, `createBy`, `createTime`,`createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
 VALUES('sms_renter_saleContractConvert_update','��¼��Լ����','��¼��Լ����',1,2,NOW(),5,NULL,NULL,NULL,1,3);
 
 INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
 VALUES((SELECT id FROM mesg_templet WHERE templetCode='sms_renter_saleContractConvert_update'),1,'��¼��Լ����','${renterName}���ã�����ס��${flatInfo}�ķ�����Ϊ���޸�����Լ�����˳��˺Ų����µ�¼Ģ���ⷿAPPȷ����Լ������ʱ�޸���������Ƹ������ϣ��������ʼ�ʱ�뷿����ͨ��',1,1,NULL,NULL);