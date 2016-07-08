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
	　　,@templet_20001paydate_msg:='您好，您租住的${roomInfo}的#${billName}#账单将在今日24点逾期，请尽快完成支付。蘑菇租房400-800-4949';
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

 