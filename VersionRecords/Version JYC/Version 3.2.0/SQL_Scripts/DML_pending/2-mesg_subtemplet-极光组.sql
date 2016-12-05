/* 聚有财-租金宝、蘑菇宝管理模板 */
USE mogoroomdb;

/* sms_partner_loan_payback_init
 [蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）已退房，需买回总金额${totalInitAmount}元，其中买回本金${buyBackAmount}元，买回手续费${lateFee}元。*/
UPDATE mesg_subtemplet SET templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）已退房，需买回总金额${totalInitAmount}元，其中买回本金${buyBackAmount}元，买回手续费${lateFee}元。' WHERE templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_payback_init');
UPDATE mesg_templet SET businessType=5 WHERE templetCode ='sms_partner_loan_payback_init';
 

/* sms_partner_loan_payback_waitingpay
 [蘑菇宝]尊敬的房东，您的买回单（${renterName}/${roomInfo}）已成功买回${repayedTotal}元，剩余待买回金额${countMoney}元，其中买回本金${lackAmount}元，买回手续费${lackLateFee}元，滞纳金${needPayPenalty}元。*/
INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES ('sms_partner_loan_payback_waitingpay', '租金宝买回', '租金宝买回', 1, 2, NOW(), 3, NULL, NULL, NULL, 1, 5);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_payback_waitingpay'), 1, '租金宝买回', '[蘑菇宝]尊敬的房东，您的买回单（${renterName}/${roomInfo}）已成功买回${repayedTotal}元，剩余待买回金额${countMoney}元，其中买回本金${lackAmount}元，买回手续费${lackLateFee}元，滞纳金${needPayPenalty}元。', 1, 1, NULL, NULL);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_payback_waitingpay'), 3, '租金宝买回', '[蘑菇宝]尊敬的房东，您的买回单（${renterName}/${roomInfo}）已成功买回${repayedTotal}元，剩余待买回金额${countMoney}元，其中买回本金${lackAmount}元，买回手续费${lackLateFee}元，滞纳金${needPayPenalty}元。', 1, 1, NULL, NULL);

/* sms_partner_loan_payback_finished
 [蘑菇宝]尊敬的房东，您的买回单（${renterName}/${roomInfo}）已成功买回。*/
INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES ('sms_partner_loan_payback_finished', '租金宝买回', '租金宝买回', 1, 2, NOW(), 3, NULL, NULL, NULL, 1, 5);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_payback_finished'), 1, '租金宝买回', '[蘑菇宝]尊敬的房东，您的买回单（${renterName}/${roomInfo}）已成功买回。', 1, 1, NULL, NULL);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_payback_finished'), 3, '租金宝买回', '[蘑菇宝]尊敬的房东，您的买回单（${renterName}/${roomInfo}）已成功买回。', 1, 1, NULL, NULL);





/* sms_partner_affirm_loan_amount 给房东发
 [蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）申请的蘑菇宝已审核通过，租金已放款至您的蘑菇伙伴账户，总计${actualAmount}元，请注意查收。*/
INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES ('sms_partner_affirm_loan_amount', '租金宝放款', '租金宝放款', 1, 2, NOW(), 3, NULL, NULL, NULL, 1, 5);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_partner_affirm_loan_amount'), 1, '租金宝放款', '[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）申请的蘑菇宝已审核通过，租金已放款至您的蘑菇伙伴账户，总计${actualAmount}元，请注意查收。', 1, 1, NULL, NULL);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_partner_affirm_loan_amount'), 3, '租金宝放款', '[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）申请的蘑菇宝已审核通过，租金已放款至您的蘑菇伙伴账户，总计${actualAmount}元，请注意查收。', 1, 1, NULL, NULL);



/* sms_renter_mogobao_approved_success 给租客发
 您申请的蘑菇宝业务已审核通过，月付租金${rent}元，首期付款日为${第一期还款日}，首期付款金额${amount}元。请注意按时付款，避免逾期产生滞纳金。*/
INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES ('sms_renter_mogobao_approved_success', '蘑菇宝审核通过', '蘑菇宝审核通过', 1, 2, NOW(), 3, NULL, NULL, NULL, 1, 5);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_renter_mogobao_approved_success'), 1, '蘑菇宝审核通过', '您申请的蘑菇宝业务已审核通过，月付租金${rent}元，首期付款日为${dueDate}，首期付款金额${amount}元。请注意按时付款，避免逾期产生滞纳金。', 1, 1, NULL, NULL);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_renter_mogobao_approved_success'), 3, '蘑菇宝审核通过', '您申请的蘑菇宝业务已审核通过，月付租金${rent}元，首期付款日为${dueDate}，首期付款金额${amount}元。请注意按时付款，避免逾期产生滞纳金。', 1, 1, NULL, NULL);







/* sms_pay_loan_landlord_overDue
[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）${租金月份}月租金已逾期${overDue}天未还款，租金${rent}元，已产生逾期费用${penalty}元，共计${还款总金额}元，请协助催缴租金。*/
INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES ('sms_pay_loan_landlord_overDue', '逾期提醒', '逾期提醒', 1, 2, NOW(), 3, NULL, NULL, NULL, 1, 5);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_pay_loan_landlord_overDue'), 1, '逾期提醒', '[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）${periodStage}月租金已逾期${overDue}天未还款，租金${capital}元，已产生逾期费用${penalty}元，共计${needPayTotalAmount}元，请协助催缴租金。', 1, 1, NULL, NULL);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_pay_loan_landlord_overDue'), 3, '逾期提醒', '[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）${periodStage}月租金已逾期${overDue}天未还款，租金${capital}元，已产生逾期费用${penalty}元，共计${needPayTotalAmount}元，请协助催缴租金。', 1, 1, NULL, NULL);



/* sms_pay_loan_landlord_overDue7
[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）${租金月份}月租金已逾期${overDue}天未还款，租金${月租金}元，已产生逾期费用${逾期滞纳金}元，共计${还款总金额}元，今日为最后还款期限，今日若不及时缴纳系统将强行退房并生成相应买回单。*/
INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES ('sms_pay_loan_landlord_overDue7', '逾期提醒', '逾期提醒', 1, 2, NOW(), 3, NULL, NULL, NULL, 1, 5);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_pay_loan_landlord_overDue7'), 1, '逾期提醒', '[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）${periodStage}月租金已逾期${overDue}天未还款，租金${capital}元，已产生逾期费用${penalty}元，共计${needPayTotalAmount}元，今日为最后还款期限，今日若不及时缴纳系统将强行退房并生成相应买回单。', 1, 1, NULL, NULL);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_pay_loan_landlord_overDue7'), 3, '逾期提醒', '[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）${periodStage}月租金已逾期${overDue}天未还款，租金${capital}元，已产生逾期费用${penalty}元，共计${needPayTotalAmount}元，今日为最后还款期限，今日若不及时缴纳系统将强行退房并生成相应买回单。', 1, 1, NULL, NULL);



/* sms_pay_loan_renter_overDue
您${租金所属月份}月租金已逾期${overDue}天，当前账单欠款${还款总金额}元，其中本金${还款本金}元，逾期滞纳金${逾期滞纳金}元，如已缴纳无需理会。*/
INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES ('sms_pay_loan_renter_overDue', '逾期提醒', '逾期提醒', 1, 2, NOW(), 3, NULL, NULL, NULL, 1, 5);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_pay_loan_renter_overDue'), 1, '逾期提醒', '您${periodStage}月租金已逾期${overDue}天，当前账单欠款${needPayTotalAmount}元，其中本金${capital}元，逾期滞纳金${penalty}元，如已缴纳无需理会。', 1, 1, NULL, NULL);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_pay_loan_renter_overDue'), 3, '逾期提醒', '您${periodStage}月租金已逾期${overDue}天，当前账单欠款${needPayTotalAmount}元，其中本金${capital}元，逾期滞纳金${penalty}元，如已缴纳无需理会。', 1, 1, NULL, NULL);



/* sms_pay_loan_renter_overDue7
您${租金所属月份}月租金已逾期${overDue}天，今日若不及时缴纳系统将强行退房，当前账单欠款${needPayTotalAmount}元，其中本金${capital}元，逾期滞纳金${penalty}元，如已缴纳无需理会。*/
INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES ('sms_pay_loan_renter_overDue7', '逾期提醒', '逾期提醒', 1, 2, NOW(), 3, NULL, NULL, NULL, 1, 5);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_pay_loan_renter_overDue7'), 1, '逾期提醒', '您${periodStage}月租金已逾期${overDue}天，今日若不及时缴纳系统将强行退房，当前账单欠款${needPayTotalAmount}元，其中本金${capital}元，逾期滞纳金${penalty}元，如已缴纳无需理会。', 1, 1, NULL, NULL);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_pay_loan_renter_overDue7'), 3, '逾期提醒', '您${periodStage}月租金已逾期${overDue}天，今日若不及时缴纳系统将强行退房，当前账单欠款${needPayTotalAmount}元，其中本金${capital}元，逾期滞纳金${penalty}元，如已缴纳无需理会。', 1, 1, NULL, NULL);

use mogoroomdb;
/* 聚有财-租金宝、蘑菇宝管理短信模板15条 */
INSERT INTO mesg_templet (templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid, businessType) VALUES ('sms_rentverify_success', '终审通过房东租金宝资质申请', '终审通过房东租金宝资质申请', 1, 2, STR_TO_DATE('2016-06-14 12:35:55','%Y-%m-%d %H:%i:%s'), 3, NULL, NULL, NULL, 1, 5);
INSERT INTO mesg_templet (templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid, businessType) VALUES ('sms_rentverify_fail', '终审拒绝房东租金宝资质申请', '终审拒绝房东租金宝资质申请', 1, 2, STR_TO_DATE('2016-06-14 12:35:55','%Y-%m-%d %H:%i:%s'), 3, NULL, NULL, NULL, 1, 5);
INSERT INTO mesg_templet (templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid, businessType) VALUES ('sms_mogoverify_fail_topartner', '蘑菇终审拒绝租客', '蘑菇终审拒绝租客', 1, 2, STR_TO_DATE('2016-06-14 12:35:55','%Y-%m-%d %H:%i:%s'), 3, NULL, NULL, NULL, 1, 5);
INSERT INTO mesg_templet (templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid, businessType) VALUES ('sms_mogoverify_fail_torenter', '蘑菇宝审核不通', '蘑菇宝审核不通', 1, 2, STR_TO_DATE('2016-06-14 12:35:55','%Y-%m-%d %H:%i:%s'), 3, NULL, NULL, NULL, 1, 5);
INSERT INTO mesg_templet (templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid, businessType) VALUES ('sms_mogoverify_validfail_torenter', '蘑菇宝资料有误', '蘑菇宝资料有误', 1, 2, STR_TO_DATE('2016-06-14 12:35:55','%Y-%m-%d %H:%i:%s'), 3, NULL, NULL, NULL, 1, 5);
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_rentverify_success'), 1, '终审通过房东租金宝资质申请', '[租金宝]尊敬的房东，您的租金宝资质已经审核通过，已可以为您的签约单设置付一押一（蘑菇宝）支付方式。', 1, 1, '', NULL);
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_rentverify_success'), 3, '终审通过房东租金宝资质申请', '[租金宝]尊敬的房东，您的租金宝资质已经审核通过，已可以为您的签约单设置付一押一（蘑菇宝）支付方式。', 1, 1, '', NULL);
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_rentverify_fail'), 1, '终审拒绝房东租金宝资质申请', '[租金宝]尊敬的房东，经综合评估，您暂不符合我司租金宝资质要求。', 1, 1, '', NULL);
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_rentverify_fail'), 3, '终审拒绝房东租金宝资质申请', '[租金宝]尊敬的房东，经综合评估，您暂不符合我司租金宝资质要求。', 1, 1, '', NULL);
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_mogoverify_fail_topartner'), 1, '蘑菇终审拒绝租客', '[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomAddr}）申请的蘑菇宝审核未通过，请联系租客退房并以其它支付方式重新签约。', 1, 1, '', NULL);
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_mogoverify_fail_topartner'), 3, '蘑菇终审拒绝租客', '[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomAddr}）申请的蘑菇宝审核未通过，请联系租客退房并以其它支付方式重新签约。', 1, 1, '', NULL);
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_mogoverify_fail_torenter'), 1, '蘑菇宝审核不通', '您${dateTime}申请的蘑菇宝业务审核未通过，请联系房东退房并以其它支付方式重新签约。', 1, 1, '', NULL);
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_mogoverify_fail_torenter'), 3, '蘑菇宝审核不通', '您${dateTime}申请的蘑菇宝业务审核未通过，请联系房东退房并以其它支付方式重新签约。', 1, 1, '', NULL);
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_mogoverify_validfail_torenter'), 1, '蘑菇宝资料有误', '您${DATETIME}申请的蘑菇宝业务由于资料有误被退回，请在签约单中修改资料重新提交申请。', 1, 1, '', NULL);
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_mogoverify_validfail_torenter'), 3, '蘑菇宝资料有误', '您${DATETIME}申请的蘑菇宝业务由于资料有误被退回，请在签约单中修改资料重新提交申请。', 1, 1, '', NULL);
