/* Database name `mogoroomdb` , 新增告警模板*/
/*  update by zhengliangjie 2016年3月28日 19:52:40*/
use mogoroomdb;

BEGIN;
SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`,`templetCode`,`templetName`,`templetDesc`,`status`,`createBy`,`createTime`,`createByType`,`updateBy`,`updateTime`,`updateByType`,`valid`,`businessType`)
VALUES(@i,'sms_warn_notice_email','告警邮件通知','告警邮件通知','1','2',NOW(),'7',NULL,NULL,NULL,'1','10');

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'2','告警通知','${warnNoticeInfo}','1','1',NULL,NULL);


SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`,`templetCode`,`templetName`,`templetDesc`,`status`,`createBy`,`createTime`,`createByType`,`updateBy`,`updateTime`,`updateByType`,`valid`,`businessType`)
VALUES(@i,'sms_warn_notice_sms','告警短信通知','告警短信通知','1','2',NOW(),'7',NULL,NULL,NULL,'1','10');

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'1','告警通知','${warnNoticeInfo}','1','1',NULL,NULL);

COMMIT;