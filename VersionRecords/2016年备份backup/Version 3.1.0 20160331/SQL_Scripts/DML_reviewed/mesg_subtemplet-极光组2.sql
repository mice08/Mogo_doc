/************����3.1.0�ű�************/
use mogoroomdb;

INSERT INTO `mesg_templet` ( `templetCode`,`templetName`,`templetDesc`,`status`, `createBy`, `createTime`,`createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
 VALUES('sms_partner_bankcard_bind','���������п�','���������п�',1,2,NOW(),5,NULL,NULL,NULL,1,10);
 
 INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
 VALUES((SELECT id FROM mesg_templet WHERE templetCode='sms_partner_bankcard_bind'),1,'���������п�','�𾴵�${name}���ã�β��${cardNumber}�����п��ѳɹ�������Ģ�����APP�˺Ű󶨡�',1,1,NULL,NULL);
