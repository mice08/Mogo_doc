/* Database name `mogoroomdb` , 新增子母账户-退款审批模板 */
use mogoroomdb;

BEGIN;
SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`,`templetCode`,`templetName`,`templetDesc`,`status`,`createBy`,`createTime`,`createByType`,`updateBy`,`updateTime`,`updateByType`,`valid`,`businessType`)
VALUES(@i,'sms_refund_approval_wait','退款审批通知','退款审批通知','1','2',NOW(),'7',NULL,NULL,NULL,'1','10');

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'1','退款审批','您有一笔${userInfoName}发起的退款${money}元待审核，请尽快操作蘑菇伙伴APP','1','1',NULL,NULL);

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'3','退款审批','您有一笔${userInfoName}发起的退款${money}元待审核，请尽快操作蘑菇伙伴APP','1','1',NULL,NULL);

SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`,`templetCode`,`templetName`,`templetDesc`,`status`,`createBy`,`createTime`,`createByType`,`updateBy`,`updateTime`,`updateByType`,`valid`,`businessType`)
VALUES(@i,'sms_refund_approval_inform','退款审批完成通知','退款审批完成通知','1','2',NOW(),'7',NULL,NULL,NULL,'1','10');

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'1','退款审批完成通知','您的退款审核没有被${landlordName}通过，拒绝原因：${approvalReason}，请返回APP退款页面重新发起申请。','1','1',NULL,NULL);

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'3','退款审批完成通知','您的退款审核没有被${landlordName}通过，拒绝原因：${approvalReason}，请返回APP退款页面重新发起申请。','1','1',NULL,NULL);
COMMIT;