/* Database name `mogoroomdb` , 子帐号消息发送*/
/*  update by 吕崇新 */
use mogoroomdb;

BEGIN;

SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`, `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
 VALUES (@i, 'push_subAccount_add', '新建子账号', '新建子账号', '1', '0', '2016-05-21 17:26:46', '4', NULL, NULL, NULL, '1', '10');
SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`, `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES (@ii,@i, '3', '新建子账号', '${landlordName}您好，您新增了${num}个子账号，具体信息如下：${contents}。请将密码告知相应员工，并妥善保管。', '1', '1', NULL, NULL);

SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`, `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES (@i, 'push_subAccount_modify', '修改子账号', '修改子账号', '1', '0', '2016-05-23 19:16:24', '4', NULL, NULL, NULL, '1', '10');
SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`, `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES (@ii,@i, '3', '修改子账号', '${landlordName}您好，您修改了子账号：${name}，新的账密如下：${contents}。请将密码告知相应员工，并妥善保管。', '1', '1', NULL, NULL);

SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`, `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES (@i, 'sms_subAccount_addPhone', '子账号手机号', '子账号手机号', '1', '0', '2016-05-24 19:22:53', '4', NULL, NULL, NULL, '1', '10');
SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`, `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES (@ii,@i, '1', '房东新建子账号', '${subName}您好，您的账号已创建成功，请使用本手机号登录蘑菇伙伴App，初始密码请咨询房东。为了账号安全，请在初次登录时修改密码。点击下载http://mogo.help/dl ', '1', '1', NULL, NULL);

SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`, `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES (@i, 'sms_subAccount_modifyPhoneN', '房东修改子账号电话', '子账号手机号（新）', '1', '0', '2016-05-23 19:22:56', '4', NULL, NULL, NULL, '1', '10');
SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`, `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES (@ii,@i, '1', '房东修改子账号电话', '${subName}您好，您的账号电话已更改，并已重置密码（咨询房东）。请使用本手机号重新登录蘑菇伙伴App并修改密码。', '1', '1', NULL, NULL);


SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`, `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES (@i, 'sms_subAccount_modifyPhoneO', '房东修改子账号电话', '子账号手机号（旧）', '1', '0', '2016-05-23 19:25:51', '4', NULL, NULL, NULL, '1', '10');
SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`, `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES (@ii,@i, '1', '房东修改子账号电话', '${subName}您好，本号码已和您的账号解绑，请使用新手机号进行登录。', '1', '1', NULL, NULL);

SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`, `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES (@i, 'sms_subAccount_resetPassWord', '房东修改子重置密码', '房东修改子重置密码', '1', '0', '2016-05-23 19:28:50', '4', NULL, NULL, NULL, '1', '10');
SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`, `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES (@ii,@i, '1', '房东修改子重置密码', '${subName}您好，您的密码重置成功，具体咨询房东。请使用本手机号重新登录“蘑菇伙伴App”并修改密码。', '1', '1', NULL, NULL);



COMMIT;






