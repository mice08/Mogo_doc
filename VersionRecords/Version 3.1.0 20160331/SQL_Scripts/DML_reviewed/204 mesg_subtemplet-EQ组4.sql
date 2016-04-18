/*  Database name `mogoroomdb` ，更新短信模板*/
use mogoroomdb;

UPDATE mesg_subtemplet SET mesg_subtemplet.`templetContent` = '${name}你好，${roomInfo}房源有新预约带看需求，带看时间：${lookTime}，租客姓名：${renterName}，手机号码：${renterPhoneNum}。请尽快与租客电话沟通联系'
WHERE mesg_subtemplet.`templetId` = (SELECT id FROM `mesg_templet` WHERE mesg_templet.`templetCode` LIKE 'sms_landlord_guanWangYuyueSuccessNotify') AND mesg_subtemplet.`templetType` = 3;
UPDATE mesg_subtemplet SET mesg_subtemplet.status = 1
WHERE mesg_subtemplet.`templetId` = (SELECT id FROM `mesg_templet` WHERE mesg_templet.`templetCode` LIKE 'sms_landlord_guanWangYuyueSuccessNotify') AND mesg_subtemplet.`templetType` = 1;

INSERT INTO `mesg_templet` (`templetCode`,`templetName`,`templetDesc`,`status`,`createBy`,`createTime`,`createByType`,`updateBy`,`updateTime`,`updateByType`,`valid`,`businessType`)VALUES('sms_appointment_return_success','租客预约看房成功','租客预约看房成功','1','2','2016-03-30 17:05:56',4,NULL,NULL,NULL,'1','1');
INSERT INTO `mesg_subtemplet` (`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)VALUES( (SELECT id FROM mesg_templet t WHERE t.`templetCode` = 'sms_appointment_return_success'),'3','租客预约看房成功','[预约成功]我们已通知房东您的看房申请信息，请保持手机畅通，耐心等待，点击查看【蘑菇租房-让我们住得更好】','1','1',NULL,NULL);