USE mogoroomdb;

/*1.消息提醒（内容变更） MSG_RENTER_BILL_1004_BEFORE3  账单提醒 -->租客_租金账单_3天   1)关闭短信通道 2)增加push 3)增加微信 */
SELECT @templet_before3_id:= (SELECT id FROM mesg_templet WHERE templetCode='sms_CreateSaleBillByBill_before3' AND STATUS =1 AND valid = 1)
	　　,@templet_before3_msg:='您好，您租住的${roomInfo}的${startDate}-${endDate}租金账单将在3日后逾期，请在${dueDate}的24点前完成支付。蘑菇租房400-800-4949';
UPDATE 	mesg_subtemplet SET templetContent = @templet_before3_msg,STATUS = 0 WHERE 	templetId  =  @templet_before3_id  AND 	valid = 1  AND 	STATUS = 1;
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,STATUS,valid) VALUES (@templet_before3_id, '3', '租金账单三天后逾期', @templet_before3_msg,'1', '1');

/*2.消息提醒（内容变更） MSG_RENTER_BILL_1004_PAYDAY 账单提醒 -->租客_租金账单_当天 1)修改短信通道 2)增加push 3)增加微信 */
SELECT @templet_payday_id:= (SELECT id FROM mesg_templet WHERE templetCode='sms_CreateSaleBillByBill_payday' AND STATUS =1 AND valid = 1)
	　　,@templet_payday_msg:='您好，您租住的${roomInfo}的${startDate}-${endDate}租金账单将在今日24点逾期，请尽快完成支付。蘑菇租房400-800-4949';
UPDATE 	mesg_subtemplet SET templetContent = @templet_payday_msg WHERE 	templetId  =  @templet_payday_id  AND 	valid = 1  AND 	STATUS = 1;
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,STATUS,valid) VALUES (@templet_payday_id, '3', '租金账单到期未付', @templet_payday_msg,'1', '1');

/*3.消息提醒（add） MSG_RENTER_BILL_1004_OVERDUE 账单提醒 -->租客_租金账单_逾期(1天、3天、7天)*/
SELECT @templet_overdue_code:= 'bill_renter_1004_overdue'
	　　,@templet_overdue_msg:='${renterName}您好，${roomInfo}的${startDate}-${endDate}租金账单已经逾期，请尽快支付给房东${landlordName}，若有疑问可与其沟通。';
INSERT INTO mesg_templet(templetCode,templetName,templetDesc,STATUS,createBy,createTime,createByType,valid,businessType) VALUES (@templet_overdue_code, '租金账单逾期', '租金账单逾期1、3、7天', '1', '2', NOW(), '4', '1', '5');
SELECT @templet_overdue_id:= LAST_INSERT_ID();
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,STATUS,valid) VALUES (@templet_overdue_id, '3', '租金账单逾期', @templet_overdue_msg,'1', '1');
 
/*4.消息提醒（add） MSG_LANDLORD_BILL_1004_PAYDAY 账单提醒 -->房东_租金账单_当天*/
SELECT @templet_landlordpaydate_code:= 'bill_landlord_1004_payday'
	　　,@templet_landlordpaydate_msg:='${landlordName}您好，今天是${roomInfo} 的${startDate}-${endDate}租金账单最晚支付日，租客${renterName}（号码：${renterPhone}），请及时收租。';
INSERT INTO mesg_templet(templetCode,templetName,templetDesc,STATUS,createBy,createTime,createByType,valid,businessType) VALUES (@templet_landlordpaydate_code, '租金账单当天提醒', '租金账单当天提醒', '1', '2', NOW(), '4', '1', '5');
SELECT @templet_landlordpaydate_id:= LAST_INSERT_ID();
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,STATUS,valid) VALUES (@templet_landlordpaydate_id, '3', '租金账单当天提醒', @templet_landlordpaydate_msg,'1', '1');

/*5.消息提醒（add） MSG_RENTER_BILL_20001_PAYDAY 账单提醒 -->租客_自定义账单_当天*/
SELECT @templet_20001paydate_code:= 'bill_renter_20001_payday'
	　　,@templet_20001paydate_msg:='您好，您租住的${roomInfo}的#${billName}#等${billNum}项账单将在今日24点逾期，请尽快完成支付。';
INSERT INTO mesg_templet(templetCode,templetName,templetDesc,STATUS,createBy,createTime,createByType,valid,businessType) VALUES (@templet_20001paydate_code, '自定义账单当天提醒', '自定义账单当天提醒', '1', '2', NOW(), '4', '1', '5');
SELECT @templet_20001paydate_id:= LAST_INSERT_ID();
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,STATUS,valid) VALUES (@templet_20001paydate_id, '1', '自定义账单当天提醒', @templet_20001paydate_msg,'1', '1');
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,STATUS,valid) VALUES (@templet_20001paydate_id, '3', '自定义账单当天提醒', @templet_20001paydate_msg,'1', '1');


/*6.消息提醒（add） MSG_RENTER_BILL_20001_OVERDUE 账单提醒 -->租客_自定义账单_逾期(1天)*/
SELECT @templet_20001overdue_code:= 'bill_renter_20001_overdue'
	　　,@templet_20001overdue_msg:='${renterName}您好，${roomInfo}的#${billName}#账单已经逾期，请尽快支付给房东${landlordName}，若有疑问可与其沟通。';
INSERT INTO mesg_templet(templetCode,templetName,templetDesc,STATUS,createBy,createTime,createByType,valid,businessType) VALUES (@templet_20001overdue_code, '自定义账单当天提醒', '自定义账单当天提醒', '1', '2', NOW(), '4', '1', '5');
SELECT @templet_20001overdue_id:= LAST_INSERT_ID();
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,STATUS,valid) VALUES (@templet_20001overdue_id, '3', '自定义账单逾期提醒', @templet_20001overdue_msg,'1', '1');



/* === 已有消息修改如下：===  */

/*消息 sms_renter_update_customBill  账务 房东修改账单 */
UPDATE mesg_templet SET templetName='租客_推送账单_修改',templetDesc='租客_推送账单_修改' 
 WHERE templetCode='sms_renter_update_customBill';
UPDATE mesg_subtemplet SET templetTitle='租客_推送账单_修改',templetContent='${renterName}您好，房东已修改您${roomInfo}的#${billName}#账单，您可打开账单查看详情并尽快支付，若有疑问请与房东联系。'
 WHERE templetId=(SELECT id FROM mesg_templet WHERE templetCode='sms_renter_update_customBill');
 
/*消息 sms_renter_revoke_customBill  账务 房东作废账单 */
UPDATE mesg_templet SET templetName='租客_账单_作废',templetDesc='租客_账单_作废' 
 WHERE templetCode='sms_renter_revoke_customBill';
UPDATE mesg_subtemplet SET templetTitle='租客_账单_作废',templetContent='${renterName}您好，房东已将您${roomInfo}的#${billName}#的账单作废，您可打开账单查看详情。'
 WHERE templetId=(SELECT id FROM mesg_templet WHERE templetCode='sms_renter_revoke_customBill');

/*消息 sms_refund_approval_wait  账务 房东退款审批 */
UPDATE mesg_templet SET templetName='房东_退款审批',templetDesc='房东_退款审批' 
 WHERE templetCode='sms_refund_approval_wait';
UPDATE mesg_subtemplet SET templetTitle='房东_退款审批',templetContent='您有一笔${userInfoName}发起的退款${money}元待审核，请至退款审核页面进行操作。'
 WHERE templetId=(SELECT id FROM mesg_templet WHERE templetCode='sms_refund_approval_wait');


 /*消息 sms_outhome_renter  租客_退房申请反馈 */
SELECT @templet_outhome_id:= (SELECT id FROM mesg_templet WHERE templetCode='sms_outhome_renter' AND STATUS =1 AND valid = 1)
	　　,@templet_outhome_msg:='一开始我很难接受，但相信您会过的更好，我们正通知房东您的退房请求，请保持手机畅通，耐心等待，蘑菇租房，期待您再次回来~';
UPDATE mesg_templet SET templetName='租客_退房申请反馈',templetDesc='租客_退房申请反馈'  WHERE id = @templet_outhome_id;
UPDATE 	mesg_subtemplet SET templetContent = @templet_outhome_msg,templetTitle ='租客_退房申请反馈'  WHERE 	templetId  =  @templet_outhome_id  AND 	valid = 1  AND 	STATUS = 1;

 /*消息 sms_outhome_landlord  房东_租客退房申请 */
SELECT @templet_outhomelandlord_id:= (SELECT id FROM mesg_templet WHERE templetCode='sms_outhome_landlord' AND STATUS =1 AND valid = 1)
	　　,@templet_outhomelandlord_msg:='${landlordName}您好，${roomInfo}申请退房，租客：${renterName}（号码：${renterPhone}），请及时处理。';
UPDATE mesg_templet SET templetName='房东_租客退房申请',templetDesc='房东_租客退房申请'  WHERE id = @templet_outhomelandlord_id;
UPDATE 	mesg_subtemplet SET templetContent = @templet_outhomelandlord_msg,templetTitle ='房东_租客退房申请'   WHERE 	templetId  =  @templet_outhomelandlord_id  AND 	valid = 1  AND 	STATUS = 1;
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,STATUS,valid) VALUES (@templet_outhomelandlord_id, '1', '房东_租客退房申请', @templet_outhomelandlord_msg,'1', '1');

 /*消息 sms_CreateCustomBillByBill  租客_新增账单_提醒 */
SELECT @custombill_templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_CreateCustomBillByBill' AND t.`status`=1 AND t.`valid`=1),@custombill_desc:='租客_新增账单_提醒',
	@custombill_msg_templet:='${renterName}您好，房东为您${roomInfo}房间新增#${billName}#等${billNum}项${billTimes}共${amount}元，请于${dueDate}的24点前完成支付，可登录蘑菇租房APP查看并支付，如有疑问请与房东联系。';
UPDATE `mesg_templet` t SET t.`templetName`=@custombill_desc, t.`templetDesc`=@custombill_desc WHERE t.id=@custombill_templet_id;
UPDATE `mesg_subtemplet` t SET t.`templetTitle`=@custombill_desc, t.`templetContent`=@custombill_msg_templet WHERE t.`templetId`=@custombill_templet_id AND t.`status`=1 AND t.`valid`=1;
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid) VALUES (@custombill_templet_id, 3, @custombill_desc, @custombill_msg_templet, 1, 1);

 /*消息 renter_checkout_dealwith_success  租客_退房完成 */
SELECT @templet_renter_checkout_id:= (SELECT id FROM mesg_templet WHERE templetCode='renter_checkout_dealwith_success' AND STATUS =1 AND valid = 1)
	　　,@templet_renter_checkout_msg:='您租住的${roomInfo}退房已完成，房东将退款${amount}元给您，请与房东联系。';
UPDATE mesg_templet SET templetName='租客_退房完成',templetDesc='租客_退房完成'  WHERE id = @templet_renter_checkout_id;
UPDATE 	mesg_subtemplet SET templetContent = @templet_renter_checkout_msg,templetTitle ='租客_退房完成'   WHERE 	templetId  =  @templet_renter_checkout_id  AND 	valid = 1  AND 	STATUS = 1;
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,STATUS,valid) VALUES (@templet_renter_checkout_id, '1', '租客_退房完成', @templet_renter_checkout_msg,'1', '1');


 /*消息 renter_checkout_dealwith_success  房东_退款审批_拒绝 */
SELECT @templet_approval_inform_id:= (SELECT id FROM mesg_templet WHERE templetCode='sms_refund_approval_inform' AND STATUS =1 AND valid = 1)
	　　,@templet_approval_inform_msg:='您的${roomInfo}退款审核被${landlordName}拒绝，原因为${approvalReason}。';
UPDATE mesg_templet SET templetName='房东_退款审批_拒绝',templetDesc='房东_退款审批_拒绝'  WHERE id = @templet_approval_inform_id;
UPDATE 	mesg_subtemplet SET templetContent = @templet_approval_inform_msg,templetTitle ='房东_退款审批_拒绝'   WHERE 	templetId  =  @templet_approval_inform_id  AND 	valid = 1  AND 	STATUS = 1;

/*消息 landlord_checkout_audit_agree  房东_退款审批_通过 */
SELECT @landlord_checkout_audit_agree_code:= 'landlord_checkout_audit_agree'
	　　,@landlord_checkout_audit_agree_msg:='${userInfoName}您好，您的${roomInfo}退款申请已通过审核。';
INSERT INTO mesg_templet(templetCode,templetName,templetDesc,STATUS,createBy,createTime,createByType,valid,businessType) VALUES (@landlord_checkout_audit_agree_code, '子账号_退款审核_拒绝', '子账号_退款审核_拒绝', '1', '2', NOW(), '4', '1', '5');
SELECT @landlord_checkout_audit_agree_id:= LAST_INSERT_ID();
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,STATUS,valid) VALUES (@landlord_checkout_audit_agree_id, '3', '子账号_退款审核_拒绝', @landlord_checkout_audit_agree_msg,'1', '1');

/* 消息脚本 */

INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) VALUES ('runter_bill_favorable', '租客账单优惠', '租客账单优惠', '1', '2', NOW(), '3', NULL, NULL, NULL, '1', '10');

INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) VALUES ('runter_bill_split', '租客账单拆分', '租客账单拆分', '1', '2', NOW(), '3', NULL, NULL, NULL, '1', '10');

# Z5
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT t.id FROM mesg_templet t WHERE t.templetCode ='runter_bill_favorable'), 3, '租客账单优惠', '${renterName}您好，房东${landlordName}已为您${roomInfo} 的${billName}账单优惠${reduceMoney}元，详情请查看账单，如有疑问请与房东联系。', '1', '1', NULL, NULL);
 
# Z6
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT t.id FROM mesg_templet t WHERE t.templetCode ='runter_bill_split'), 3, '租客账单拆分', '${renterName}您好，房东${landlordName}已将您${roomInfo} 的${billName}账单进行拆分，最低支付金额${leastMoney}元，最晚支付日为${dueDate}24点，请尽快支付，详情请查看账单，如有疑问请与房东联系。', '1', '1', NULL, NULL);
 
-- 82 
UPDATE mesg_subtemplet t SET t.`status` = '0' WHERE t.templetId = (SELECT t.id FROM mesg_templet t WHERE t.templetCode = 'sms_landlordinfo_afterpaid_withdefinedbill');  
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT t.id FROM mesg_templet t WHERE t.templetCode ='sms_landlordinfo_afterpaid_withdefinedbill'), 3,'房东_推送账单_已付', '租客${renterName}已成功支付${roomInfo}的#${billName}#账单，可打开账单收款查看明细。', '1', '1', NULL, NULL);
 
-- 83 
UPDATE mesg_subtemplet t SET t.`status` = '0' WHERE t.templetType = '1' AND t.templetId = (SELECT t.id FROM mesg_templet t WHERE t.templetCode = 'sms_landlord_repayPlan'); 
UPDATE mesg_subtemplet t SET t.templetTitle ='房东_租金已付', t.templetContent = '${landlordName}您好，租客${renterName}（${roomInfo}）已通过蘑菇成功支付${startMonth}-${endMonth}月租金。' WHERE t.templetType = '3' AND t.templetId = (SELECT t.id FROM mesg_templet t WHERE t.templetCode ='sms_landlord_repayPlan');
 
-- 88
UPDATE mesg_subtemplet t SET t.`status` = '0' WHERE t.templetId = (SELECT t.id FROM mesg_templet t WHERE t.templetCode = 'sms_renterinfo_afterpaid_withdefinedbill'); 
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT t.id FROM mesg_templet t WHERE t.templetCode ='sms_renterinfo_afterpaid_withdefinedbill'), 3,'租客_新增账单_已付','${renterName}您好，感谢您支付${roomInfo}#${billName}#账单。', '1', '1', NULL, NULL);
 
-- 89
UPDATE mesg_subtemplet t SET t.`status` = '0' WHERE t.templetId = (SELECT t.id FROM mesg_templet t WHERE t.templetCode = 'sms_renterinfo_afterpaid_withroutinebill'); 
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((SELECT t.id FROM mesg_templet t WHERE t.templetCode ='sms_renterinfo_afterpaid_withroutinebill'), 3,'租客_新增账单_已付','${renterName}，您已成功支付${roomInfo} ${startMonth}-${endMonth}月租金账单，可进入账单查看详情。', '1', '1', NULL, NULL);

/*消息优化 sms_additional_renter -- 租客_补录租约_已有账号*/
UPDATE mesg_templet SET templetName='租客_补录租约_已有账号',templetDesc='租客_补录租约_已有账号' WHERE templetCode='sms_additional_renter';
UPDATE mesg_subtemplet SET templetContent='${renterName}您好，为提升服务品质，方便您在线报修及缴租，您的房东${landlordName}已与白领租房平台“蘑菇租房”开展合作。请关注并绑定“蘑菇租房”支付宝服务窗/微信公众号，或登录蘑菇租房APP使用您的手机号${cellPhone}确认租约。' WHERE templetId = (SELECT id FROM mesg_templet WHERE templetCode='sms_additional_renter');

/*消息优化 sms_additional_new_renter -- 租客_补录租约_新账号*/
UPDATE mesg_templet SET templetName='租客_补录租约_新账号',templetDesc='租客_补录租约_新账号' WHERE templetCode='sms_additional_new_renter';
UPDATE mesg_subtemplet SET templetContent='${renterName}您好，为提升服务品质，方便您在线报修及缴费，房东${landlordName}已与白领租房平台“蘑菇租房”开展合作。请关注并绑定“蘑菇租房”支付宝服务窗/微信公众号，或登录蘑菇租房APP（账号为手机：${cellPhone}，临时密码${PASSWORD}）确认租约，登录后请及时修改密码。' WHERE templetId = (SELECT id FROM mesg_templet WHERE templetCode='sms_additional_new_renter');

/*消息优化 sms_renter_saleContractConvert_success -- 房东_租客同意补录*/
UPDATE mesg_templet SET templetName='房东_租客同意补录',templetDesc='房东_租客同意补录' WHERE templetCode='sms_renter_saleContractConvert_success';
UPDATE mesg_subtemplet SET templetContent='${landlordname}您好，租客${renterName}同意了您${roominfo}的转客租约。',templetTitle='补录租约确认' WHERE templetId = (SELECT id FROM mesg_templet WHERE templetCode='sms_renter_saleContractConvert_success');

/*30 sms_signing_wait_audit push 房东_新增签约_审核*/
SELECT @signing_templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_signing_wait_audit' AND t.`status`=1 AND t.`valid`=1),
	@signing_desc:='房东_新增签约_审核',
	@signing_msg_templet:='${landlordName}您好，${roomInfo}有一笔签约单，请及时审核，租客：${renterName}（号码：${renterPhoneNum}）。';
UPDATE `mesg_templet` t SET t.`templetName`=@signing_desc, t.`templetDesc`=@signing_desc WHERE t.id=@signing_templet_id;
UPDATE `mesg_subtemplet` t SET t.`templetType`=3, t.`templetTitle`=@signing_desc, t.`templetContent`=@signing_msg_templet WHERE t.`templetId`=@signing_templet_id AND t.`status`=1 AND t.`valid`=1;

/*49 sms_renter_signUnsuccess_errorInfo sms/push 租客_签约资料有误*/
SELECT @sign_unsuccess_templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_renter_signUnsuccess_errorInfo' AND t.`status`=1 AND t.`valid`=1),
	@sign_unsuccess_desc:='租客_签约资料有误',
	@sign_unsuccess_msg_templet:='您提交的签约单资料有误，已被退回（${remark}），请登录蘑菇租房APP修改资料并重新提交。';
UPDATE `mesg_templet` t SET t.`templetName`=@sign_unsuccess_desc, t.`templetDesc`=@sign_unsuccess_desc WHERE t.id=@sign_unsuccess_templet_id;
UPDATE `mesg_subtemplet` t SET t.`templetTitle`=@sign_unsuccess_desc, t.`templetContent`=@sign_unsuccess_msg_templet WHERE t.`templetId`=@sign_unsuccess_templet_id AND t.`status`=1 AND t.`valid`=1;
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid) VALUES (@sign_unsuccess_templet_id, 1, @sign_unsuccess_desc, @sign_unsuccess_msg_templet, 1, 1);

/*34 sms_renter_signUnsuccess_disagreeRefund*/
SELECT @disagreeRefund_templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_renter_signUnsuccess_disagreeRefund' AND t.`status`=1 AND t.`valid`=1);
UPDATE `mesg_subtemplet` t SET t.`status`=0, t.`valid`=0 WHERE t.`templetId`=@disagreeRefund_templet_id;
UPDATE `mesg_templet` t SET t.`status`=0, t.`valid`=0 WHERE t.`id`=@disagreeRefund_templet_id;

/*48 sms_renter_signUnsuccess_agreeRefund*/
SELECT @agreeRefund_templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_renter_signUnsuccess_agreeRefund' AND t.`status`=1 AND t.`valid`=1);
UPDATE `mesg_subtemplet` t SET t.`status`=0, t.`valid`=0 WHERE t.`templetId`=@agreeRefund_templet_id;
UPDATE `mesg_templet` t SET t.`status`=0, t.`valid`=0 WHERE t.`id`=@agreeRefund_templet_id;

/*36 sms_renter_signUnsuccess_refundAll sms/push 租客_签约审核失败*/
SELECT @templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_renter_signUnsuccess_refundAll' AND t.`status`=1 AND t.`valid`=1),
	@templet_desc:='租客_签约审核失败',
	@templet_content:='您好，${roomInfo}签约未通过审核，退还定金${returnMoney}元，若有疑问请与房东联系。';
UPDATE `mesg_templet` t SET t.`templetName`=@templet_desc, t.`templetDesc`=@templet_desc WHERE t.id=@templet_id;
UPDATE `mesg_subtemplet` t SET t.`templetTitle`=@templet_desc, t.`templetContent`=@templet_content WHERE t.`templetId`=@templet_id AND t.`status`=1 AND t.`valid`=1;
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid) VALUES (@templet_id, 1, @templet_desc, @templet_content, 1, 1);

/*z11 msg_confirm_signed_renter_approval sms/push 租客_租约确认_审核*/
INSERT INTO mesg_templet(templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, valid, businessType) 
	VALUES('msg_confirm_signed_renter_approval', '租客_租约确认_审核', '租客_租约确认_审核', 1, 2, NOW(), 4, 1, 3);
SELECT @templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='msg_confirm_signed_renter_approval' AND t.`status`=1 AND t.`valid`=1),
	@templet_desc:='租客_租约确认_审核',
	@templet_content:='恭喜您${renterName}，离住进${communityName}只差一步了，房东已同意签约，请登录蘑菇租房APP进入订单确认并完成签约。';
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid) VALUES (@templet_id, 1, @templet_desc, @templet_content, 1, 1);
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid) VALUES (@templet_id, 3, @templet_desc, @templet_content, 1, 1);

/*44 sms_sendPayFirstPhaseMessage push 租客_签约成功*/
SELECT @templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_sendPayFirstPhaseMessage' AND t.`status`=1 AND t.`valid`=1),
	@templet_desc:='租客_签约成功',
	@templet_content:='恭喜！您已成功签约${roomInfo}，请最迟于${dueDate}支付您的第一期款项（${totalMoney}元）。愿您租住安心，生活愉快。关注蘑菇租房“mogoroom”开启快乐生活~';
UPDATE `mesg_templet` t SET t.`templetName`=@templet_desc, t.`templetDesc`=@templet_desc WHERE t.id=@templet_id;
UPDATE `mesg_subtemplet` t SET t.`templetType`=3, t.`templetTitle`=@templet_desc, t.`templetContent`=@templet_content WHERE t.`templetType`=1 AND t.`templetId`=@templet_id AND t.`status`=1 AND t.`valid`=1;

/*z12 msg_success_signed_remind_landlord push 房东_签约成功*/
INSERT INTO mesg_templet(templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, valid, businessType) 
	VALUES('msg_success_signed_remind_landlord', '房东_签约成功', '房东_签约成功', 1, 2, NOW(), 4, 1, 3);
SELECT @templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='msg_success_signed_remind_landlord' AND t.`status`=1 AND t.`valid`=1),
	@templet_desc:='房东_签约成功',
	@templet_content:='${landlordName}您好，租客${renterName}已与您成功签约房源${roomInfo}，请提醒租客尽快支付首期费用。';
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid) VALUES (@templet_id, 3, @templet_desc, @templet_content, 1, 1);

/*51 sendRenterContractFile push 租客_自动发送合同*/
SELECT @templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sendRenterContractFile' AND t.`status`=1 AND t.`valid`=1),
	@templet_desc:='租客_自动发送合同',
	@templet_content:='您已在${sendTime}通过蘑菇租房APP向邮箱${email}发送了一份电子租赁合同，请注意查收。蘑菇租房，让我们住的更好！';
UPDATE `mesg_templet` t SET t.`templetName`=@templet_desc, t.`templetDesc`=@templet_desc WHERE t.id=@templet_id;
UPDATE `mesg_subtemplet` t SET t.`templetType`=3, t.`templetTitle`=@templet_desc, t.`templetContent`=@templet_content WHERE t.`templetType`=1 AND t.`templetId`=@templet_id AND t.`status`=1 AND t.`valid`=1;

/*31 sms_renter_signSuccess_changed*/
SELECT @templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_renter_signSuccess_changed' AND t.`status`=1 AND t.`valid`=1);
UPDATE `mesg_subtemplet` t SET t.`status`=0, t.`valid`=0 WHERE t.`templetId`=@templet_id;
UPDATE `mesg_templet` t SET t.`status`=0, t.`valid`=0 WHERE t.`id`=@templet_id;

/*47 sms_renter_signSuccess*/
SELECT @templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_renter_signSuccess' AND t.`status`=1 AND t.`valid`=1);
UPDATE `mesg_subtemplet` t SET t.`status`=0, t.`valid`=0 WHERE t.`templetId`=@templet_id;
UPDATE `mesg_templet` t SET t.`status`=0, t.`valid`=0 WHERE t.`id`=@templet_id;

/*50 sms_saleContract_cancel push 租客_房东撤销签约*/
SELECT @templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_saleContract_cancel' AND t.`status`=1 AND t.`valid`=1),
	@templet_desc:='租客_房东撤销签约',
	@templet_content:='${renterName}您好，房东${landlordName}已撤销${roomInfo}的签约（退款${refund}元），若有疑问请与房东联系。';
UPDATE `mesg_templet` t SET t.`templetName`=@templet_desc, t.`templetDesc`=@templet_desc WHERE t.id=@templet_id;
UPDATE `mesg_subtemplet` t SET t.`templetTitle`=@templet_desc, t.`templetContent`=@templet_content WHERE t.`templetId`=@templet_id AND t.`status`=1 AND t.`valid`=1;

/*42 sms_signing_wait_confirm sms/push 租客_签约确认_已有账号*/
SELECT @templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_signing_wait_confirm' AND t.`status`=1 AND t.`valid`=1),
	@templet_desc:='租客_签约确认_已有账号',
	@templet_content:='${renterName}您好，房东${landlordName}向您发送了一份${roominfo}的租约，请关注并绑定“蘑菇租房”支付宝服务窗/微信公众号，或登录蘑菇租房APP使用您的手机号${cellPhone}完成签约。';
UPDATE `mesg_templet` t SET t.`templetName`=@templet_desc, t.`templetDesc`=@templet_desc WHERE t.id=@templet_id;
UPDATE `mesg_subtemplet` t SET t.`templetType`=3, t.`templetTitle`=@templet_desc, t.`templetContent`=@templet_content WHERE t.`templetId`=@templet_id AND t.`templetType`=1 AND t.`status`=1 AND t.`valid`=1;
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid) VALUES (@templet_id, 1, @templet_desc, @templet_content, 1, 1);

/*45 sms_signing_wait_confirm_new_renter sms/push 租客_签约确认_新账号*/
SELECT @templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_signing_wait_confirm_new_renter' AND t.`status`=1 AND t.`valid`=1),
	@templet_desc:='租客_签约确认_新账号',
	@templet_content:='${renterName}您好，房东${landlordName}向您发送租约需您确认，请关注并绑定“蘑菇租房”支付宝服务窗/微信公众号，或登录蘑菇租房APP（账号为手机：${cellPhone}，临时密码：${password}）核对并完成签约，登录后请及时修改密码';
UPDATE `mesg_templet` t SET t.`templetName`=@templet_desc, t.`templetDesc`=@templet_desc WHERE t.id=@templet_id;
UPDATE `mesg_subtemplet` t SET t.`templetType`=3, t.`templetTitle`=@templet_desc, t.`templetContent`=@templet_content WHERE t.`templetId`=@templet_id AND t.`templetType`=1 AND t.`status`=1 AND t.`valid`=1;
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid) VALUES (@templet_id, 1, @templet_desc, @templet_content, 1, 1);

/*Z1 msg_to_renter_room_checkout_finish  push 租客_退房结束*/
INSERT INTO mesg_templet(templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, valid, businessType) 
	VALUES('msg_to_renter_room_checkout_finish', '租客_退房结束', '租客_退房结束', 1, 2, NOW(), 4, 1, 3);
SELECT @templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='msg_to_renter_room_checkout_finish' AND t.`status`=1 AND t.`valid`=1),
	@templet_desc:='租客_退房结束',
	@templet_content:='${renterName}您好，房东${landlordName}已完成您租住的${roomInfo}的退房（退款${amount}元），详情请查看租约，如有疑问请与房东联系。';
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid) VALUES (@templet_id, 3, @templet_desc, @templet_content, 1, 1);


