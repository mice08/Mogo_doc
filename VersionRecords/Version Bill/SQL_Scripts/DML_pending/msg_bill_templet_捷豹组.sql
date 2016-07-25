use mogoroomdb;

/*1.消息提醒（内容变更） MSG_RENTER_BILL_1004_BEFORE3  账单提醒 -->租客_租金账单_3天   1)关闭短信通道 2)增加push 3)增加微信 */
select @templet_before3_id:= (select id from mesg_templet where templetCode='sms_CreateSaleBillByBill_before3' and status =1 and valid = 1)
	　　,@templet_before3_msg:='您好，您租住的${roomInfo}的${startDate}-${endDate}租金账单将在3日后逾期，请在${dueDate}的24点前完成支付。蘑菇租房400-800-4949';
update 	mesg_subtemplet set templetContent = @templet_before3_msg,status = 0 where 	templetId  =  @templet_before3_id  and 	valid = 1  and 	status = 1;
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,status,valid) VALUES (@templet_before3_id, '3', '租金账单三天后逾期', @templet_before3_msg,'1', '1');

/*2.消息提醒（内容变更） MSG_RENTER_BILL_1004_PAYDAY 账单提醒 -->租客_租金账单_当天 1)修改短信通道 2)增加push 3)增加微信 */
select @templet_payday_id:= (select id from mesg_templet where templetCode='sms_CreateSaleBillByBill_payday' and status =1 and valid = 1)
	　　,@templet_payday_msg:='您好，您租住的${roomInfo}的${startDate}-${endDate}租金账单将在今日24点逾期，请尽快完成支付。蘑菇租房400-800-4949';
update 	mesg_subtemplet set templetContent = @templet_payday_msg where 	templetId  =  @templet_payday_id  and 	valid = 1  and 	status = 1;
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,status,valid) VALUES (@templet_payday_id, '3', '租金账单到期未付', @templet_payday_msg,'1', '1');

/*3.消息提醒（add） MSG_RENTER_BILL_1004_OVERDUE 账单提醒 -->租客_租金账单_逾期(1天、3天、7天)*/
select @templet_overdue_code:= 'bill_renter_1004_overdue'
	　　,@templet_overdue_msg:='${renterName}您好，${roomInfo}的${startDate}-${endDate}租金账单已经逾期，请尽快支付给房东${landlordName}，若有疑问可与其沟通。';
INSERT INTO mesg_templet(templetCode,templetName,templetDesc,status,createBy,createTime,createByType,valid,businessType) VALUES (@templet_overdue_code, '租金账单逾期', '租金账单逾期1、3、7天', '1', '2', now(), '4', '1', '5');
SELECT @templet_overdue_id:= LAST_INSERT_ID();
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,status,valid) VALUES (@templet_overdue_id, '3', '租金账单逾期', @templet_overdue_msg,'1', '1');
 
/*4.消息提醒（add） MSG_LANDLORD_BILL_1004_PAYDAY 账单提醒 -->房东_租金账单_当天*/
select @templet_landlordpaydate_code:= 'bill_landlord_1004_payday'
	　　,@templet_landlordpaydate_msg:='${landlordName}您好，今天是${roomInfo} 的${startDate}-${endDate}租金账单最晚支付日，租客${renterName}（号码：${renterPhone}），请及时收租。';
INSERT INTO mesg_templet(templetCode,templetName,templetDesc,status,createBy,createTime,createByType,valid,businessType) VALUES (@templet_landlordpaydate_code, '租金账单当天提醒', '租金账单当天提醒', '1', '2', now(), '4', '1', '5');
SELECT @templet_landlordpaydate_id:= LAST_INSERT_ID();
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,status,valid) VALUES (@templet_landlordpaydate_id, '3', '租金账单当天提醒', @templet_landlordpaydate_msg,'1', '1');

/*5.消息提醒（add） MSG_RENTER_BILL_20001_PAYDAY 账单提醒 -->租客_自定义账单_当天*/
select @templet_20001paydate_code:= 'bill_renter_20001_payday'
	　　,@templet_20001paydate_msg:='您好，您租住的${roomInfo}的#${billName}#等${billNum}项账单将在今日24点逾期，请尽快完成支付。';
INSERT INTO mesg_templet(templetCode,templetName,templetDesc,status,createBy,createTime,createByType,valid,businessType) VALUES (@templet_20001paydate_code, '自定义账单当天提醒', '自定义账单当天提醒', '1', '2', now(), '4', '1', '5');
SELECT @templet_20001paydate_id:= LAST_INSERT_ID();
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,status,valid) VALUES (@templet_20001paydate_id, '1', '自定义账单当天提醒', @templet_20001paydate_msg,'1', '1');
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,status,valid) VALUES (@templet_20001paydate_id, '3', '自定义账单当天提醒', @templet_20001paydate_msg,'1', '1');


/*6.消息提醒（add） MSG_RENTER_BILL_20001_OVERDUE 账单提醒 -->租客_自定义账单_逾期(1天)*/
select @templet_20001overdue_code:= 'bill_renter_20001_overdue'
	　　,@templet_20001overdue_msg:='${renterName}您好，${roomInfo}的#${billName}#账单已经逾期，请尽快支付给房东${landlordName}，若有疑问可与其沟通。';
INSERT INTO mesg_templet(templetCode,templetName,templetDesc,status,createBy,createTime,createByType,valid,businessType) VALUES (@templet_20001overdue_code, '自定义账单当天提醒', '自定义账单当天提醒', '1', '2', now(), '4', '1', '5');
SELECT @templet_20001overdue_id:= LAST_INSERT_ID();
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,status,valid) VALUES (@templet_20001overdue_id, '3', '自定义账单逾期提醒', @templet_20001overdue_msg,'1', '1');



/* === 已有消息修改如下：===  */

/*消息 sms_renter_update_customBill  账务 房东修改账单 */
update mesg_templet set templetName='租客_推送账单_修改',templetDesc='租客_推送账单_修改' 
 where templetCode='sms_renter_update_customBill';
update mesg_subtemplet set templetTitle='租客_推送账单_修改',templetContent='${renterName}您好，房东已修改您${roomInfo}的#${billName}#账单，您可打开账单查看详情并尽快支付，若有疑问请与房东联系。'
 where templetId=(select id from mesg_templet where templetCode='sms_renter_update_customBill');
 
/*消息 sms_renter_revoke_customBill  账务 房东作废账单 */
update mesg_templet set templetName='租客_账单_作废',templetDesc='租客_账单_作废' 
 where templetCode='sms_renter_revoke_customBill';
update mesg_subtemplet set templetTitle='租客_账单_作废',templetContent='${renterName}您好，房东已将您${roomInfo}的#${billName}#的账单作废，您可打开账单查看详情。'
 where templetId=(select id from mesg_templet where templetCode='sms_renter_revoke_customBill');

/*消息 sms_refund_approval_wait  账务 房东退款审批 */
update mesg_templet set templetName='房东_退款审批',templetDesc='房东_退款审批' 
 where templetCode='sms_refund_approval_wait';
update mesg_subtemplet set templetTitle='房东_退款审批',templetContent='您有一笔${userInfoName}发起的退款${money}元待审核，请至退款审核页面进行操作。'
 where templetId=(select id from mesg_templet where templetCode='sms_refund_approval_wait');


 /*消息 sms_outhome_renter  租客_退房申请反馈 */
select @templet_outhome_id:= (select id from mesg_templet where templetCode='sms_outhome_renter' and status =1 and valid = 1)
	　　,@templet_outhome_msg:='一开始我很难接受，但相信您会过的更好，我们正通知房东您的退房请求，请保持手机畅通，耐心等待，蘑菇租房，期待您再次回来~';
update mesg_templet set templetName='租客_退房申请反馈',templetDesc='租客_退房申请反馈'  where id = @templet_outhome_id;
update 	mesg_subtemplet set templetContent = @templet_outhome_msg,templetTitle ='租客_退房申请反馈'  where 	templetId  =  @templet_outhome_id  and 	valid = 1  and 	status = 1;

 /*消息 sms_outhome_landlord  房东_租客退房申请 */
select @templet_outhomelandlord_id:= (select id from mesg_templet where templetCode='sms_outhome_landlord' and status =1 and valid = 1)
	　　,@templet_outhomelandlord_msg:='${landlordName}您好，${roomInfo}申请退房，租客：${renterName}（号码：${renterPhone}），请及时处理。';
update mesg_templet set templetName='房东_租客退房申请',templetDesc='房东_租客退房申请'  where id = @templet_outhomelandlord_id;
update 	mesg_subtemplet set templetContent = @templet_outhomelandlord_msg,templetTitle ='房东_租客退房申请'   where 	templetId  =  @templet_outhomelandlord_id  and 	valid = 1  and 	status = 1;
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,status,valid) VALUES (@templet_outhomelandlord_id, '1', '房东_租客退房申请', @templet_outhomelandlord_msg,'1', '1');

 /*消息 sms_CreateCustomBillByBill  租客_新增账单_提醒 */
SELECT @custombill_templet_id:=(SELECT id FROM `mesg_templet` t WHERE t.`templetCode`='sms_CreateCustomBillByBill' AND t.`status`=1 AND t.`valid`=1),@custombill_desc:='租客_新增账单_提醒',
	@custombill_msg_templet:='${renterName}您好，房东为您${roomInfo}房间新增#${billName}#等${billNum}项${billTimes}共${amount}元，请于${dueDate}的24点前完成支付，可登录蘑菇租房APP查看并支付，如有疑问请与房东联系。';
UPDATE `mesg_templet` t SET t.`templetName`=@custombill_desc, t.`templetDesc`=@custombill_desc WHERE t.id=@custombill_templet_id;
UPDATE `mesg_subtemplet` t SET t.`templetTitle`=@custombill_desc, t.`templetContent`=@custombill_msg_templet WHERE t.`templetId`=@custombill_templet_id AND t.`status`=1 AND t.`valid`=1;
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid) VALUES (@custombill_templet_id, 3, @custombill_desc, @custombill_msg_templet, 1, 1);

 /*消息 renter_checkout_dealwith_success  租客_退房完成 */
select @templet_renter_checkout_id:= (select id from mesg_templet where templetCode='renter_checkout_dealwith_success' and status =1 and valid = 1)
	　　,@templet_renter_checkout_msg:='您租住的${roomInfo}退房已完成，房东将退款${amount}元给您，请与房东联系。';
update mesg_templet set templetName='租客_退房完成',templetDesc='租客_退房完成'  where id = @templet_renter_checkout_id;
update 	mesg_subtemplet set templetContent = @templet_renter_checkout_msg,templetTitle ='租客_退房完成'   where 	templetId  =  @templet_renter_checkout_id  and 	valid = 1  and 	status = 1;
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,status,valid) VALUES (@templet_renter_checkout_id, '1', '租客_退房完成', @templet_renter_checkout_msg,'1', '1');


 /*消息 renter_checkout_dealwith_success  房东_退款审批_拒绝 */
select @templet_approval_inform_id:= (select id from mesg_templet where templetCode='sms_refund_approval_inform' and status =1 and valid = 1)
	　　,@templet_approval_inform_msg:='您的${roomInfo}退款审核被${landlordName}拒绝，原因为${approvalReason}。';
update mesg_templet set templetName='房东_退款审批_拒绝',templetDesc='房东_退款审批_拒绝'  where id = @templet_approval_inform_id;
update 	mesg_subtemplet set templetContent = @templet_approval_inform_msg,templetTitle ='房东_退款审批_拒绝'   where 	templetId  =  @templet_approval_inform_id  and 	valid = 1  and 	status = 1;

/*消息 landlord_checkout_audit_agree  房东_退款审批_通过 */
select @landlord_checkout_audit_agree_code:= 'landlord_checkout_audit_agree'
	　　,@landlord_checkout_audit_agree_msg:='${userInfoName}您好，您的${roomInfo}退款申请已通过审核。';
INSERT INTO mesg_templet(templetCode,templetName,templetDesc,status,createBy,createTime,createByType,valid,businessType) VALUES (@landlord_checkout_audit_agree_code, '子账号_退款审核_拒绝', '子账号_退款审核_拒绝', '1', '2', now(), '4', '1', '5');
SELECT @landlord_checkout_audit_agree_id:= LAST_INSERT_ID();
INSERT INTO mesg_subtemplet (templetId,templetType,templetTitle,templetContent,status,valid) VALUES (@landlord_checkout_audit_agree_id, '3', '子账号_退款审核_拒绝', @landlord_checkout_audit_agree_msg,'1', '1');

/* 消息脚本 */

INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) VALUES ('runter_bill_favorable', '租客账单优惠', '租客账单优惠', '1', '2', NOW(), '3', NULL, NULL, NULL, '1', '10');

INSERT INTO `mesg_templet` (`templetCode`, `templetName`, `templetDesc`, `status`, `createBy`, `createTime`, `createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) VALUES ('runter_bill_split', '租客账单拆分', '租客账单拆分', '1', '2', NOW(), '3', NULL, NULL, NULL, '1', '10');

INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((select t.id from mesg_templet t where t.templetCode ='runter_bill_favorable'), 1, '租客账单优惠', '${renterName}您好，房东${landlordName}已为您${roomInfo} 的${billName}账单优惠${reduceMoney}元，详情请查看账单，如有疑问请与房东联系。', '1', '1', NULL, NULL);

INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((select t.id from mesg_templet t where t.templetCode ='runter_bill_favorable'), 3, '租客账单优惠', '${renterName}您好，房东${landlordName}已为您${roomInfo} 的${billName}账单优惠${reduceMoney}元，详情请查看账单，如有疑问请与房东联系。', '1', '1', NULL, NULL);
 
 
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((select t.id from mesg_templet t where t.templetCode ='runter_bill_split'), 1, '租客账单拆分', '${renterName}您好，房东${landlordName}已将您${roomInfo} 的${billName}账单进行拆分，最低支付金额${leastMoney}元，最晚支付日为${dueDate}24点，请尽快支付，详情请查看账单，如有疑问请与房东联系。', '1', '1', NULL, NULL);

INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((select t.id from mesg_templet t where t.templetCode ='runter_bill_split'), 3, '租客账单拆分', '${renterName}您好，房东${landlordName}已将您${roomInfo} 的${billName}账单进行拆分，最低支付金额${leastMoney}元，最晚支付日为${dueDate}24点，请尽快支付，详情请查看账单，如有疑问请与房东联系。', '1', '1', NULL, NULL);
 
-- 82 
UPDATE mesg_subtemplet t SET t.`status` = '0' WHERE t.templetId = (SELECT t.id FROM mesg_templet t WHERE t.templetCode = 'sms_landlordinfo_afterpaid_withdefinedbill');  
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((select t.id from mesg_templet t where t.templetCode ='sms_landlordinfo_afterpaid_withdefinedbill'), 3,'房东_推送账单_已付', '租客${renterName}已成功支付${roomInfo}的#${billName}#账单，可打开账单收款查看明细。', '1', '1', NULL, NULL);
 
-- 83 
UPDATE mesg_subtemplet t SET t.`status` = '0' WHERE t.templetType = '1' and t.templetId = (SELECT t.id FROM mesg_templet t WHERE t.templetCode = 'sms_landlord_repayPlan'); 
update mesg_subtemplet t set t.templetTitle ='房东_租金已付', t.templetContent = '${landlordName}您好，租客${renterName}（${roomInfo}）已通过蘑菇成功支付${startMonth}-${endMonth}月租金。' where t.templetType = '3' and t.templetId = (select t.id from mesg_templet t where t.templetCode ='sms_landlord_repayPlan');
 
-- 88
UPDATE mesg_subtemplet t SET t.`status` = '0' WHERE t.templetId = (SELECT t.id FROM mesg_templet t WHERE t.templetCode = 'sms_renterinfo_afterpaid_withdefinedbill'); 
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((select t.id from mesg_templet t where t.templetCode ='sms_renterinfo_afterpaid_withdefinedbill'), 3,'租客_新增账单_已付','${renterName}您好，感谢您支付${roomInfo}#${billName}#账单。', '1', '1', NULL, NULL);
 
-- 89
UPDATE mesg_subtemplet t SET t.`status` = '0' WHERE t.templetId = (SELECT t.id FROM mesg_templet t WHERE t.templetCode = 'sms_renterinfo_afterpaid_withroutinebill'); 
INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
VALUES ((select t.id from mesg_templet t where t.templetCode ='sms_renterinfo_afterpaid_withroutinebill'), 3,'租客_新增账单_已付','${renterName}，您已成功支付${roomInfo} ${startMonth}-${endMonth}月租金账单，可进入账单查看详情。', '1', '1', NULL, NULL);

