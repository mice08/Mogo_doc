/* Database name `mogoroomdb` , 新增修改密码消息推送模板*/
/*  update by zhengliangjie 2016年4月28日 09:39:14*/
use mogoroomdb;

BEGIN;
SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`,`templetCode`,`templetName`,`templetDesc`,`status`,`createBy`,`createTime`,`createByType`,`updateBy`,`updateTime`,`updateByType`,`valid`,`businessType`)
VALUES(@i,'push_partner_pwd_update','更改密码消息推送','更改密码消息推送','1','2',NOW(),'7',NULL,NULL,NULL,'1','10');

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'3','密码消息推送','该账户在网页端修改了密码，请使用新密码重新登录，谢谢！','1','1',NULL,NULL);



COMMIT;