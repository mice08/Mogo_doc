/* Database name `mogoroomdb` , 极光组修改消息模板*/

USE mogoroomdb;

BEGIN;
/*蘑菇宝审核通过(聚有财)*/
UPDATE mesg_subtemplet SET templetContent='您申请的蘑菇宝业务已审核通过，月付租金${rent}元，首期付款日为${dueDate}，首期付款金额${amount}元。请注意按时付款，避免逾期产生滞纳金。如后期需要退房，请登录蘑菇租房APP进行操作。' 
WHERE  templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_renter_mogobao_approved_success');

        
/*租金宝买回成功*/
UPDATE mesg_subtemplet SET templetContent='[蘑菇宝]尊敬的房东，您的买回单（${renterName}/${roomInfo}）已成功买回。买回总金额${countMoney}元，感谢您的配合！' 
WHERE  templetId IN (SELECT id FROM mesg_templet WHERE templetCode='ms_partner_loan_payback_success');

/*租金宝买回*/
UPDATE mesg_subtemplet SET templetContent='[蘑菇宝]尊敬的房东，您需支付（租客${renterName}，${roomInfo}）蘑菇宝买回总金额${countAmount}元，其中：剩余贷款租金${buyBackAmount}元，买回服务费${lateFee}元，买回滞纳金${penalty}元，返还手续费${backFee}元，抵扣保证金${returnDeposit}元。请于今日将蘑菇宝买回，以免产生滞纳金，谢谢！' 
WHERE  templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_payback');


/*租金宝买回失败*/
UPDATE mesg_subtemplet SET templetContent='[蘑菇宝]尊敬的房东，您需支付（租客${renterName}，${roomInfo}）蘑菇宝买回剩余金额${countMoney}元，其中：买回总额${totalAmount}元，已扣买回金额${repayedTotal}元，产生滞纳金${totalPenalty}元。以免产生更多滞纳金，谢谢！' 
WHERE  templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_payback_failure');

/*租金宝已终止，租客逾期*/
UPDATE mesg_subtemplet SET templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）蘑菇宝逾期未支付租金，已经被强制退房，请及时处理。对应的租金宝已经中止，请确保个人帐户余额留有足够金额${countAmount}元，买回租金宝并支付相应手续费和滞纳金。' 
WHERE  templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_duedate5');

/*租金宝逾期，租客逾期（7天）*/
UPDATE mesg_subtemplet SET templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）下月租金剩余${amount}元未支付，已逾期${overDue}天，将产生滞纳金，为了维护您和租客的利益，请注意提醒，若再不全额缴纳，我们将清退租客，谢谢！' 
WHERE  templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_overDue7');

/*租金宝逾期，租客逾期（1-6天）*/
UPDATE mesg_subtemplet SET templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）下月租金剩余${amount}元未支付，已逾期${overDue}天，将产生滞纳金，为了维护您和租客的利益，请注意提醒，谢谢！' 
WHERE  templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_overDue');

/*租金宝放款*/
UPDATE mesg_subtemplet SET templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）申请的蘑菇宝已审核通过，租金已放款至您的蘑菇伙伴账户，总计${actualAmount}元，请注意查收。' 
WHERE  templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_put_amount');

/*蘑菇宝终审通过*/
UPDATE mesg_subtemplet SET templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）申请的蘑菇宝业务已审核通过。' 
WHERE  templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_landlord_mogobao_finalapprove_success');

/*蘑菇宝终审不通过*/
UPDATE mesg_subtemplet SET templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）申请的蘑菇宝业务审核未通过。' 
WHERE  templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_landlord_mogobao_end_failure');

/*蘑菇宝终审不通过(租客)*/
UPDATE mesg_subtemplet SET valid='0'
WHERE  templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_renter_mogobao_end_failure') AND templetType=1;

/*蘑菇宝终审通过(租客)*/
UPDATE mesg_subtemplet SET valid='0'
WHERE  templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_renter_mogobao_finalapprove_success')  AND templetType=1;

/*蘑菇宝资料有误（房东）*/
INSERT INTO mesg_templet (templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid, businessType) VALUES ('sms_mogoverify_validfail_topartner', '蘑菇宝资料有误', '蘑菇宝资料有误', 1, 2, NOW(), 3, NULL, NULL, NULL, 1, 5);
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_mogoverify_validfail_topartner'), 1, '蘑菇宝资料有误', '[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomAddr}）申请的蘑菇宝由于资料有误被退回。请协助通知租客及时提交修改资料。', 1, 1, '', NULL);
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_mogoverify_validfail_topartner'), 3, '蘑菇宝资料有误', '[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomAddr}）申请的蘑菇宝由于资料有误被退回。请协助通知租客及时提交修改资料。', 1, 1, '', NULL);

COMMIT;