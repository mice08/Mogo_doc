/*  Database name `mogoroomdb` ，新增消息模板*/
use mogoroomdb;


 INSERT INTO `mesg_templet` ( `templetCode`,`templetName`,`templetDesc`,`status`, `createBy`, `createTime`,`createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
 VALUES('sms_partner_phone_update_verify','房东联系电话修改','房东联系电话修改',1,2,NOW(),5,NULL,NULL,NULL,1,10);
 
 INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
 VALUES((SELECT id FROM mesg_templet WHERE templetCode='sms_partner_phone_update_verify'),1,'房东联系电话修改','[修改联系电话]你正在用该手机号修改“蘑菇伙伴”联系电话，手机校验码：${VCode}，若非本人操作，请及时联系蘑菇租房400-800-4949。',1,1,NULL,NULL);