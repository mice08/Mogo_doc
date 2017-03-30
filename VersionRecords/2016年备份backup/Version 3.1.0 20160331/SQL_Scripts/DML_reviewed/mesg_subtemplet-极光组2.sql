/************发布3.1.0脚本************/
use mogoroomdb;

INSERT INTO `mesg_templet` ( `templetCode`,`templetName`,`templetDesc`,`status`, `createBy`, `createTime`,`createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
 VALUES('sms_partner_bankcard_bind','房东绑定银行卡','房东绑定银行卡',1,2,NOW(),5,NULL,NULL,NULL,1,10);
 
 INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
 VALUES((SELECT id FROM mesg_templet WHERE templetCode='sms_partner_bankcard_bind'),1,'房东绑定银行卡','尊敬的${name}您好，尾号${cardNumber}的银行卡已成功与您的蘑菇伙伴APP账号绑定。',1,1,NULL,NULL);
