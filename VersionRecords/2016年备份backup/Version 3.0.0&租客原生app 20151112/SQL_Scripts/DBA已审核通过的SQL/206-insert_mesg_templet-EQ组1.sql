
/* Database name `mogoroomdb` ，向租客发送的短信（部分）、推送消息模版 */
USE mogoroomdb;

BEGIN;
SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_renterAddPayPwd', '首次设置支付密码通知', '首次设置支付密码通知', 1, 2, NOW(), 4, 1, 6);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '设置支付密码成功', '恭喜！您已成功设置蘑菇租房支付密码，支付密码是您使用蘑菇租房账户余额支付、提现等资金变动时的凭证，请妥善保管。蘑菇租房-让我们住得更好！', 1, 1, NULL, 'MODULE_MsgDetail');
COMMIT;