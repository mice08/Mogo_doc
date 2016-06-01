/* Database name `mogoroomdb` ，插入消息模板 */
use mogoroomdb;

INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES ( 'email_employee_restPassword', '后台BS登陆密码重置', '后台BS登陆密码重置', '1', '2', '2016-04-22 16:10:49', '5', NULL, NULL, NULL, '1', '10');

INSERT INTO `mesg_subtemplet` ( `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)

VALUES ( (SELECT id FROM mesg_templet WHERE templetCode='email_employee_restPassword'), '2', '登陆密码重置成功', '您的后台BS登录密码已被重置为“123456”，请尽快登录后台修改密码。', '1', '1', NULL, NULL);
