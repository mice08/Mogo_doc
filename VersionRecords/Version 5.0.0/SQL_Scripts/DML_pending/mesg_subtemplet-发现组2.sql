/* Database name `mogoroomdb` , 子帐号消息发送*/ 测试库请更改mogoroomdb为测试库名
/*  update by 吕崇新 */
use mogoroomdb;
BEGIN;

SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`, `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
 VALUES (@i, 'push_subAccount_add', '新建子账号', '新建子账号', '1', '0', '2016-05-21 17:26:46', '4', NULL, NULL, NULL, '1', '10');
SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`, `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES (@ii,@i, '3', '新建子账号', '${landlordName}您好，您新增了${num}个子账号，具体信息如下：${contents}。请将密码告知相应员工，并妥善保管。', '1', '1', NULL, NULL);


INSERT INTO `mogo_dev`.`mesg_templet` (`id`, `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES (@i, 'push_orgDel_notice', '组织变动提醒', '组织减少时提醒消息', '1', '2000031', '2016-07-27 17:42:53', '5', NULL, NULL, NULL, '1', NULL);
INSERT INTO `mogo_dev`.`mesg_subtemplet` (`id`, `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES (@ii, @i, '3', '注意，您的组织已发生变更', '您好，您的所属组织已被更改，请重新登录后进行查看及切换。', '1', '1', NULL, NULL);



INSERT INTO `mogo_dev`.`mesg_templet` (`id`, `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`)
 VALUES (@i, 'push_orgAdd_notice', '组织变动提醒', '新增组织提醒消息', '1', '2000031', '2016-07-27 17:41:31', '5', NULL, NULL, NULL, '1', NULL);
INSERT INTO `mogo_dev`.`mesg_subtemplet` (`id`, `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES (@ii, @i, '3', '注意，您已拥有新的组织', '您好，您已被赋予新的组织权限，可在重新登录后开始使用。', '1', '1', NULL, NULL);


INSERT INTO `mogo_dev`.`mesg_templet` (`id`, `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES (@i, 'push_roleAdd_notice', '角色变动提醒', '角色新增提示', '1', '2000031', '2016-07-27 17:34:51', '5', NULL, NULL, NULL, '1', NULL);
INSERT INTO `mogo_dev`.`mesg_subtemplet` (`id`, `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES (@ii, @i, '3', '提示，您已拥有新的角色', '您好，您已被赋予新的角色，可在重新登录后开始使用。', '1', '1', NULL, NULL);


INSERT INTO `mogo_dev`.`mesg_templet` (`id`, `templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES (@i, 'push_roleDel_notice', '角色变动提醒', '角色减少提示', '1', '1', '2016-07-21 16:16:01', '5', NULL, NULL, NULL, '1', '10');
INSERT INTO `mogo_dev`.`mesg_subtemplet` (`id`, `templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES (@ii, @i, '3', '注意，您的角色已发生变更', '您好，您在本组织内的角色权限已发生变更，请重新登录后进行查看及使用。', '1', '1', NULL, NULL);

COMMIT;