/* Database name `mogoroomdb` ，向租客推送App消息的模版 */
USE mogoroomdb;

BEGIN;
SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'push_renter_noticeLogoff', '帐号登录通知', '您的帐号已在其他设备登录', 1, 2, NOW(), 4, 1, 10);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '帐号登录通知', '您的帐号已在其他设备登录，如有疑问请联系客服。蘑菇租房-让我们住得更好！', 1, 1, NULL, 'MODULE_Login');
COMMIT;
