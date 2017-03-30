/* Database name `mogoroomdb` ，新增消息模版*/
use mogoroomdb;


BEGIN;
INSERT INTO `mesg_templet`(templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES('sms_renter_resetPwdNotify', '密码重置通知', '密码重置通知', 1, 2, NOW(), 4, 1, 10);

SET @i = (SELECT id FROM  mesg_templet WHERE templetCode='sms_renter_resetPwdNotify');
INSERT INTO `mesg_subtemplet`(templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@i, 1, '密码重置通知', '尊敬的用户，您好！您于${currentTime}通过通过蘑菇租房${channel}变更了账号${passwordType}，请妥善保存，并确认是本人操作。', 1, 1, NULL, NULL);
COMMIT;


BEGIN;
INSERT INTO `mesg_templet`(templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES('sms_renter_modifyPhone', '修改手机号码', '修改手机号码', 1, 2, NOW(), 4, 1, 10);

SET @i = (SELECT id FROM  mesg_templet WHERE templetCode='sms_renter_modifyPhone');
INSERT INTO `mesg_subtemplet`(templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@i, 1, '修改手机号码', '尊敬的用户，您好！您于${currentTime}通过蘑菇租房${channel}变更了账号为${newCellPhone}，请妥善保存，并确认是本人操作。', 1, 1, NULL, NULL);
COMMIT;