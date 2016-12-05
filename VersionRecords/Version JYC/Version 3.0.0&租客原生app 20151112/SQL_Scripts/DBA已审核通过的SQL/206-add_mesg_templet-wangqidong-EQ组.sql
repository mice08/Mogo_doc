/* Database name `mogoroomdb` ，向租客发送的短信（部分）、推送消息模版 */
USE mogoroomdb;

BEGIN;

SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_withdrawal_success', '租客提现申请通知', '租客提现申请通知', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '账户提现', '您在${datetime}通过蘑菇租房账户申请提现：${amount}元，我们正在处理，预计3个工作日内到账。蘑菇租房400-800-4949，畅快沟通，让我们住得更好！', 1, 1, NULL,'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '账户提现', '您在${datetime}通过蘑菇租房账户申请提现：${amount}元，我们正在处理，预计3个工作日内到账。蘑菇租房400-800-4949，畅快沟通，让我们住得更好！', 1, 1, NULL,'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_withdrawal_fail', '租客提现失败通知', '租客提现失败通知', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '账户提现', '您在${datetime}发起的提现申请处理失败，登录蘑菇租房核对卡号与姓名是否准确。蘑菇租房400-800-4949，畅快沟通，让我们住得更好！', 1, 1, NULL,'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '账户提现', '您在${datetime}发起的提现申请处理失败，登录蘑菇租房核对卡号与姓名是否准确。蘑菇租房400-800-4949，畅快沟通，让我们住得更好！', 1, 1, NULL,'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_saleContractConvert_notify', '房东补录租约通知', '房东补录租约通知', 1, 2, NOW(), 4, 1, 6);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '补录租约', '${renter}您好，您租住的${roomInfo}房源的房东已为您补录了租约，请登录蘑菇租房APP确认租约，若有疑问请及时与房东进行沟通。', 1, 1, NULL, NULL);



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_initPW', '批量修改租客密码推送消息', '批量修改租客密码推送消息', 1, 2, NOW(), 4, 1, 6);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '修改密码', '蘑菇租房APP来了,亲爱的${realName}您好，很荣幸的通知您，蘑菇租房APP上线了，即日起您可下载蘑菇租房APP使用找房、报修等功能，后续我们还会逐步完善更多功能。为省去您的麻烦，我们已为您定制了一个账号（您的登录账号：${account}，登录密码：${password}，请登录后尽快修改密码信息）,现在赶快访问蘑菇官方网站下载使用吧。', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_sendPayFirstPhaseMessage', '支付首期款发送通知', '支付首期款发送通知', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '支付账单', '欢迎你！蘑菇客,${contractInfo}蘑菇租房感谢您的信任和支持，并祝您租房愉快！', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_guanWangYuyueSuccess', '手机号预约生成注册账号推送消息', '手机号预约生成注册账号推送消息', 1, 2, NOW(), 4, 1, 1);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '预约成功', '${yuyueInfo}您可以使用该账号密码登录蘑菇租房APP查看预约进度及完成后续签约入住流程', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_guanWangYuyueSuccessNotify', '官网预约发送通知', '官网预约发送通知', 1, 2, NOW(), 4, 1, 1);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '预约成功', '${yuyueInfo}及相关密码登录蘑菇租房APP查看预约进度及完成后续签约入住流程', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_verificationCode', '租客App服务验证码', '租客App服务验证码', 1, 2, NOW(), 4, 1, 6);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '服务验证码', '蘑菇租房服务验证码：${code}，若非本人操作，请及时联系蘑菇租房400-800-4949。', 1, 1, NULL, NULL);




SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'email_renter_verificationCode', '租客App服务验证码', '租客App服务验证码', 1, 2, NOW(), 4, 1, 6);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 2, '服务验证码', '蘑菇租房服务验证码：${code}，若非本人操作，请及时联系蘑菇租房400-800-4949。', 1, 1, NULL, NULL);



COMMIT;