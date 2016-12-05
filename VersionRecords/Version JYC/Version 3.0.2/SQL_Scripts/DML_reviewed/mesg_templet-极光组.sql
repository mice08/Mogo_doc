/*  Database name `mogoroomdb` ，新增消息模板*/
use mogoroomdb;


 INSERT INTO `mesg_templet` ( `templetCode`,`templetName`,`templetDesc`,`status`, `createBy`, `createTime`,`createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
 VALUES('sms_partner_pwd_update','房东密码修改','房东密码修改',1,2,NOW(),5,NULL,NULL,NULL,1,10);
 
 INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
 VALUES((SELECT id FROM mesg_templet WHERE templetCode='sms_partner_pwd_update'),1,'房东密码修改','您的蘑菇伙伴登录密码重置成功！若非本人操作或有疑问，请及时联系蘑菇租房400-800-4949。',1,1,NULL,NULL);
 
 
 
 INSERT INTO `mesg_templet` ( `templetCode`,`templetName`,`templetDesc`,`status`, `createBy`, `createTime`,`createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
 VALUES('sms_partner_paypwd_update','房东支付密码修改','房东支付密码修改',1,2,NOW(),5,NULL,NULL,NULL,1,10);
 
 INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
 VALUES((SELECT id FROM mesg_templet WHERE templetCode='sms_partner_paypwd_update'),1,'房东支付密码修改','您的蘑菇伙伴支付密码重置成功！若非本人操作或有疑问，请及时联系蘑菇租房400-800-4949。',1,1,NULL,NULL);
 
 
  INSERT INTO `mesg_templet` ( `templetCode`,`templetName`,`templetDesc`,`status`, `createBy`, `createTime`,`createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
 VALUES('sms_partner_phone_update','房东联系电话修改','房东联系电话修改',1,2,NOW(),5,NULL,NULL,NULL,1,10);
 
 INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
 VALUES((SELECT id FROM mesg_templet WHERE templetCode='sms_partner_phone_update'),1,'房东联系电话修改','您的蘑菇伙伴联系方式已被修改为${phone}！若非本人操作或有疑问，请及时联系蘑菇租房400-800-4949。',1,1,NULL,NULL);