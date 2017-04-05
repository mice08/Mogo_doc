/* Database name `mogoroomdb` ，短信合并需求 - 消息模板内容更新*/
use mogoroomdb;

BEGIN;

update mesg_subtemplet set templetContent='[蘑菇宝]尊敬的房东，今天是您的${renterCount}名租客（${renterName}）${rentMonth}租金的最后还款日，请督促租客及时缴纳，以免产生滞纳金。' where templetId=(select id from mesg_templet where templetCode='sms_jyc_bill_dueDate_toLandLord');
update mesg_subtemplet set templetContent='[蘑菇宝]尊敬的房东，您有${renterCount}名租客（${renterName}）${rentMonth}租金已逾期并已产生滞纳金，请协助催缴租金。' where templetId=(select id from mesg_templet where templetCode='sms_pay_loan_landlord_overDue');
update mesg_subtemplet set templetContent='[蘑菇宝]尊敬的房东，您有${renterCount}名租客（${renterName}）${rentMonth}租金已逾期7天未还款，今日为最后还款期限，今日若不及时缴纳系统将强行退房并生成相应买回单。' where templetId=(select id from mesg_templet where templetCode='sms_pay_loan_landlord_overDue7');

INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES ('sms_partner_loan_repayPlan', '租客成功支付', '租客成功支付', 1, 2, NOW(), 3, NULL, NULL, NULL, 1, 5);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_repayPlan'), 1, '租客成功支付', '[蘑菇宝]尊敬的房东，您有${renterCount}名租客（${renterName}）已成功支付下月租金。', 1, 1, NULL, NULL);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_repayPlan'), 3, '租客成功支付', '[蘑菇宝]尊敬的房东，您有${renterCount}名租客（${renterName}）已成功支付下月租金。', 1, 1, NULL, NULL);


UPDATE mesg_subtemplet SET templetContent='[蘑菇宝]尊敬的房东，您有${renterCount}名租客（${renterName}）已逾期并产生滞纳金，为了维护您和租客的利益，请注意提醒，谢谢！' 
WHERE templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_overDue');

UPDATE mesg_subtemplet SET templetContent='[蘑菇宝]尊敬的房东，您有${renterCount}名租客（${renterName}）已逾期7天并已产生滞纳金，为了维护您和租客的利益，请注意提醒，若再不全额缴纳，我们将清退租客，谢谢！' 
WHERE templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_overDue7');


COMMIT;