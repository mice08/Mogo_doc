USE mogoroomdb;

/* sms_partner_loan_payback_init
 尊敬的${landlordName}您好，您需支付（租客${renterName}，${roomInfo}）蘑菇宝买回总金额${countAmount}元，其中：剩余贷款租金${buyBackAmount}元，买回服务费${lateFee}元，租客滞纳金${renterPenalty}元，买回滞纳金${penalty}元，返还手续费${backFee}元。请于今日将蘑菇宝买回，以免产生滞纳金，谢谢！如有疑问，请咨询客服电话4008004949。*/
INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
VALUES ('sms_partner_loan_payback_init', '租金宝买回', '租金宝买回', 1, 2, NOW(), 3, NULL, NULL, NULL, 1, 3);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_payback_init'), 1, '租金宝买回', '尊敬的${landlordName}您好，您需支付（租客${renterName}，${roomInfo}）蘑菇宝买回总金额${countAmount}元，其中：剩余贷款租金${buyBackAmount}元，买回服务费${lateFee}元，租客滞纳金${renterPenalty}元，买回滞纳金${penalty}元，返还手续费${backFee}元。请于今日将蘑菇宝买回，以免产生滞纳金，谢谢！如有疑问，请咨询客服电话4008004949。', 1, 1, NULL, NULL);
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT id FROM mesg_templet WHERE templetCode='sms_partner_loan_payback_init'), 3, '租金宝买回', '尊敬的${landlordName}您好，您需支付（租客${renterName}，${roomInfo}）蘑菇宝买回总金额${countAmount}元，其中：剩余贷款租金${buyBackAmount}元，买回服务费${lateFee}元，租客滞纳金${renterPenalty}元，买回滞纳金${penalty}元，返还手续费${backFee}元。请于今日将蘑菇宝买回，以免产生滞纳金，谢谢！如有疑问，请咨询客服电话4008004949。', 1, 1, NULL, NULL);
