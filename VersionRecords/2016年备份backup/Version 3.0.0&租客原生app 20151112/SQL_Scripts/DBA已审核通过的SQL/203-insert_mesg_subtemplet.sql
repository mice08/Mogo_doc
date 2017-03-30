/* Database name `mogoroomdb` ，插入消息模板 */
use mogoroomdb;

 INSERT INTO `mesg_templet` ( `templetCode`,`templetName`,`templetDesc`,`status`, `createBy`, `createTime`,`createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
 VALUES('sms_additional_renter','补录租约提醒','补录租约提醒',1,2,NOW(),5,NULL,NULL,NULL,1,3);
 
 INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
 VALUES((SELECT id FROM mesg_templet WHERE templetCode='sms_additional_renter'),1,'补录租约提醒','${renterName}您好，您租住的${flatInfo}的房东已为您录入了线上租约，请使用蘑菇租房APP登录您的相关账号（账号：${cellphone}，密码：${originPwd}）确认租约，确认无误后，您可以直接通过蘑菇租房APP支付剩余租金账单。蘑菇租房APP下载地址http://www.mogoroom.com/pages/activity/AppDown.jsp ，登录后请及时修改和完善账号信息，若有疑问请及时与房东联系。',1,1,NULL,NULL);
 
 
 INSERT INTO `mesg_templet` ( `templetCode`,`templetName`,`templetDesc`,`status`, `createBy`, `createTime`,`createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
 VALUES('sms_renter_saleContractConvert_update','补录租约提醒','补录租约提醒',1,2,NOW(),5,NULL,NULL,NULL,1,3);
 
 INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)
 VALUES((SELECT id FROM mesg_templet WHERE templetCode='sms_renter_saleContractConvert_update'),1,'补录租约提醒','${renterName}您好，您租住的${flatInfo}的房东已为您修改了租约，请退出账号并重新登录蘑菇租房APP确认租约，并及时修改密码和完善个人资料，若有疑问及时与房东沟通。',1,1,NULL,NULL);