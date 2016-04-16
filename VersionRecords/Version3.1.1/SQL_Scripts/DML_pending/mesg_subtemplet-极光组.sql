/*  Database name `mogoroomdb` ，新增和修改消息模板*/
USE mogoroomdb;

/* sms_partner_loan_payback_success
 [租金宝买回成功]租客${renterName}对应的租金宝买回成功,买回总金额${countMoney}元。蘑菇租房400-800-4949
【蘑菇租房】尊敬的***先生（女士）您好，您的租客**，**小区**房间的蘑菇宝已买回成功，买回总金额****元，感谢您的配合，谢谢！*/
UPDATE mesg_subtemplet SET templetTitle ='租金宝买回成功',templetContent='尊敬的${landlordName}您好，您的租客${renterName}，${roomInfo}的蘑菇宝已买回成功，买回总金额${countMoney}元，感谢您的配合，谢谢！' WHERE templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_payback_success') AND templetType IN (3);

INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_payback_success'), 1, '租金宝买回成功', '尊敬的${landlordName}您好，您的租客${renterName}，${roomInfo}的蘑菇宝已买回成功，买回总金额${countMoney}元，感谢您的配合，谢谢！', 1, 1, NULL, NULL);



/* sms_partner_loan_payback_failure
 原 [租金宝买回失败]租客${renterName}对应的租金宝买回失败，您的帐户提现功能已被冻结，请及时充值${countMoney}元，买回对应租金宝。蘑菇租房400-800-4949
 【蘑菇租房】尊敬的***先生（女士）您好，您需支付（租客**，**小区**房间）蘑菇宝买回剩余金额****元，其中：买回总额***元，已扣买回金额***元，产生滞纳金***元。以免产生更多滞纳金，谢谢！如有疑问，请咨询客服电话4008004949。 */
UPDATE mesg_subtemplet SET templetContent='尊敬的${landlordName}您好，您需支付（租客${renterName}，${roomInfo}）蘑菇宝买回剩余金额${countMoney}元，其中：买回总额${totalAmount}元，已扣买回金额${repayedTotal}元，产生滞纳金${totalPenalty}元。以免产生更多滞纳金，谢谢！如有疑问，请咨询客服电话4008004949。' WHERE templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_payback_failure');

/*sms_partner_loan_payback
 [租金宝买回]您的租金宝需要买回，租客${renterName}，对应房源${roomInfo}，请确保当天个人帐户余额留有足够金额${countAmount}元，已抵扣账户保证金${returnDeposit}元。其中买回本金${buyBackAmount}元，已使用租金宝手续费${feeAmount}元，退货手续费100元，滞纳金${penalty}元。蘑菇租房400-800-4949
【蘑菇租房】尊敬的***先生（女士）您好，您需支付（租客**，**小区**房间）蘑菇宝买回总金额****元，其中：剩余贷款租金***元，买回服务费***元，买回滞纳金***元，租客滞纳金****元，返还手续费***元，抵扣保证金***元。请于今日将蘑菇宝买回，以免产生滞纳金，谢谢！如有疑问，请咨询客服电话4008004949。*/
UPDATE mesg_subtemplet SET templetContent='尊敬的${landlordName}您好，您需支付（租客${renterName}，${roomInfo}）蘑菇宝买回总金额${countAmount}元，其中：剩余贷款租金${buyBackAmount}元，买回服务费${lateFee}元，买回滞纳金${penalty}元，租客滞纳金${renterPenalty}元，返还手续费${backFee}元，抵扣保证金${returnDeposit}元。请于今日将蘑菇宝买回，以免产生滞纳金，谢谢！如有疑问，请咨询客服电话4008004949。' WHERE templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_payback');


/* sms_partner_loan_put_amount
 [租金宝放款]您的租金宝已经成功放款，对应房源${roomInfo}，租客${renterName}, 租金总额${loanAmount}元，保证金${depositAmount}元，手续费${feeAmount}元，实际放款金额${actualAmount}元。请登录蘑菇伙伴APP查看详情。蘑菇租房400-800-4949
 【蘑菇租房】尊敬的***先生（女士）您好，您有1笔总金额为****元的收款，来自租客**（**小区**房间）申请的**月期（比如4月期）蘑菇宝，已扣除手续费**元，保证金**元。*/
UPDATE mesg_subtemplet SET templetContent='尊敬的${landlordName}您好，您有1笔总金额为${actualAmount}元的收款，来自租客${renterName}（${roomInfo}）申请的${period}月期蘑菇宝，已扣除手续费${feeAmount}元，保证金${depositAmount}元。' WHERE templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_put_amount');



/* sms_landlord_mogobao_end_failure
 [蘑菇宝终审不通过]您的租客${renterName}，对应房源${roomInfo}，蘑菇宝终审不通过，此单不再提供租金宝，请您与租客协商变更付款方式重新签约。蘑菇租房400-800-4949
 【蘑菇租房】尊敬的***先生（女士）您好，租客**（**小区**房间）申请的蘑菇宝业务已审核通过。*/
UPDATE mesg_subtemplet SET templetContent='尊敬的${landlordName}您好，租客${renterName}（${roomInfo}）申请的蘑菇宝业务审核未通过。' WHERE templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_landlord_mogobao_end_failure');


/* sms_renter_mogobao_end_failure
 很遗憾，您提交的蘑菇宝签约单已被退回（备注：${remark}），请登录蘑菇租房APP查看详情，若有疑问，请与我们联系，蘑菇租房400-800-4949
 【蘑菇租房】尊敬的***先生（女士），非常遗憾，您申请的**小区**房间蘑菇宝）业务审核未通过。*/
UPDATE mesg_subtemplet SET templetContent='尊敬的${renterName}，非常遗憾，您申请的${roomInfo}蘑菇宝业务审核未通过。' WHERE templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_renter_mogobao_end_failure');
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_renter_mogobao_end_failure'), 3, '蘑菇宝终审不通过', '尊敬的${renterName}，非常遗憾，您申请的${roomInfo}蘑菇宝业务审核未通过。', 1, 1, NULL, NULL);



/* sms_landlord_mogobao_finalapprove_success
 【蘑菇租房】尊敬的***先生（女士）您好，租客**（**小区**房间）申请的蘑菇宝业务已审核通过。*/
INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES ('sms_landlord_mogobao_finalapprove_success', '蘑菇宝终审通过', '蘑菇宝终审通过', 1, 2, NOW(), 3, NULL, NULL, NULL, 1, 3);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_landlord_mogobao_finalapprove_success'), 1, '蘑菇宝终审通过', '尊敬的${landlordName}您好，租客${renterName}（${roomInfo}）申请的蘑菇宝业务已审核通过。', 1, 1, NULL, NULL);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_landlord_mogobao_finalapprove_success'), 3, '蘑菇宝终审通过', '尊敬的${landlordName}您好，租客${renterName}（${roomInfo}）申请的蘑菇宝业务已审核通过。', 1, 1, NULL, NULL);


/* sms_renter_mogobao_finalapprove_success
 【蘑菇租房】尊敬的***先生（女士），非常遗憾，您申请的**小区**房间蘑菇宝）业务审核未通过。*/
INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES ('sms_renter_mogobao_finalapprove_success', '蘑菇宝终审通过', '蘑菇宝终审通过', 1, 2, NOW(), 3, NULL, NULL, NULL, 1, 3);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_renter_mogobao_finalapprove_success'), 1, '蘑菇宝终审通过', '尊敬的${renterName}，恭喜您，您申请的${roomInfo}蘑菇宝业务已审核通过。', 1, 1, NULL, NULL);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)  
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_renter_mogobao_finalapprove_success'), 3, '蘑菇宝终审通过', '尊敬的${renterName}，恭喜您，您申请的${roomInfo}蘑菇宝业务已审核通过。', 1, 1, NULL, NULL);


/* sms_landlord_repayPlan
 [蘑菇宝租客成功支付租金]${address}租客${realName}已成功通过蘑菇宝付款方式支付了本期租金。
 【蘑菇租房】尊敬的***先生（女士）您好，您的租客**（**小区**房间）已成功支付下月租金：****元，谢谢！*/
UPDATE mesg_subtemplet SET templetContent='尊敬的${landlordName}您好，您的租客${renterName}（${roomInfo}）已成功支付下月租金：${amount}元，谢谢！' WHERE templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_landlord_repayPlan');

/*  sms_renter_repayPlan
 【蘑菇租房】尊敬的***先生（女士）您好，您已成功支付下月租金：****元，谢谢！
 您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，已成功完成扣款，可立即登录蘑菇租房APP查看详情。蘑菇租房400-800-4949 */
UPDATE mesg_subtemplet SET templetContent='尊敬的${renterName}您好，您已成功支付下月租金：${amount}元，谢谢！' WHERE templetId IN (SELECT id FROM mesg_templet WHERE templetCode='sms_renter_repayPlan');
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)  
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_renter_repayPlan'), 3, '蘑菇宝账单已付通知', '尊敬的${renterName}您好，您已成功支付下月租金：${amount}元，谢谢！', 1, 1, NULL, NULL);


/*  sms_partner_loan_overDue
 [租金宝逾期]您的租金宝已经逾期${overDue}天，请通知租客${renterName}（${roomInfo}）及时支付本月房租，否则您将需要买回租金宝并支付相应手续费和滞纳金。蘑菇租房400-800-4949
 尊敬的***先生（女士）您好，您的租客**（**小区**房间）需支付下月租金：****元，已逾期1天（2天...），将产生滞纳金，为了维护您和租客的利益，请注意提醒，谢谢！*/
INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES ('sms_partner_loan_overDue', '租金宝逾期，租客逾期', '租金宝逾期，租客逾期', 1, 2, NOW(), 3, NULL, NULL, NULL, 1, 5);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_overDue'), 1, '租金宝逾期，租客逾期', '尊敬的${landlordName}您好，您的租客${renterName}（${roomInfo}）需支付下月租金：${amount}元，已逾期${overDue}天，将产生滞纳金，为了维护您和租客的利益，请注意提醒，谢谢！', 1, 1, NULL, NULL);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)  
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_overDue'), 3, '租金宝逾期，租客逾期', '尊敬的${landlordName}您好，您的租客${renterName}（${roomInfo}）需支付下月租金：${amount}元，已逾期${overDue}天，将产生滞纳金，为了维护您和租客的利益，请注意提醒，谢谢！', 1, 1, NULL, NULL);

/* sms_partner_loan_overDue7
 尊敬的***先生（女士）您好，您的租客**（**小区**房间）需支付下月租金：****元，已逾期7天，请将产生滞纳金，为了维护您和租客的利益，请注意提醒，若再不全额缴纳，我们将清退租客，谢谢！*/
INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES ('sms_partner_loan_overDue7', '租金宝逾期，租客逾期', '租金宝逾期，租客逾期', 1, 2, NOW(), 3, NULL, NULL, NULL, 1, 5);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_overDue7'), 1, '租金宝逾期，租客逾期', '尊敬的${landlordName}您好，您的租客${renterName}（${roomInfo}）需支付下月租金：${amount}元，已逾期${overDue}天，请将产生滞纳金，为了维护您和租客的利益，请注意提醒，若再不全额缴纳，我们将清退租客，谢谢！', 1, 1, NULL, NULL);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`)  
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_overDue7'), 3, '租金宝逾期，租客逾期', '尊敬的${landlordName}您好，您的租客${renterName}（${roomInfo}）需支付下月租金：${amount}元，已逾期${overDue}天，请将产生滞纳金，为了维护您和租客的利益，请注意提醒，若再不全额缴纳，我们将清退租客，谢谢！', 1, 1, NULL, NULL);


