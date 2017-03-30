/* Database name `mogoroomdb` , 极光组修改消息模板*/

USE mogoroomdb;


update mesg_subtemplet set templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}，对应房源${roomInfo}，蘑菇宝首次申请审批失败，请协助通知租客及时提交修改资料。' where templetId in (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_one_failure');
update mesg_subtemplet set templetContent='[蘑菇宝]尊敬的房东，您的租客{renterName}（{roomInfo}）申请的蘑菇宝审核未通过，请联系租客退房并以其它支付方式重新签约。' where templetId in (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_two_failure');
update mesg_subtemplet set templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}，对应房源${roomInfo}，蘑菇宝申请已通过审批，等待放款中，请知悉。' where templetId in (select id from mesg_templet where templetCode = 'sms_landlord_mogobao_lakala_success');
update mesg_subtemplet set templetContent='[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomInfo}）已成功支付下月租金。' where templetId in (select id from mesg_templet where templetCode = 'sms_landlord_repayPlan');

insert into mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_renter_mogobao_lakala_failure'), 3, '蘑菇宝资料有误', '很遗憾，您提交的蘑菇宝签约单已被退回（备注：${remark}），请立即登录蘑菇租房APP并在今日24点前完成资料修改和提交。蘑菇租房400-800-4949', 1, 1, '', 'MODULE_MsgDetail');
update mesg_subtemplet set valid=0 where templetId in (select id from mesg_templet where templetCode = 'sms_renter_mogobao_lakala_failure') and templetType=1;

insert into mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_CreateMogobaoLklBillByBill'), 3, '蘑菇宝还款提醒', '您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，扣款时间为${dueDate}17:00，请确保尾号为${cardTail}的借记卡存有全额租金。蘑菇租房400-800-4949', 1, 1, '', 'MODULE_MyBill');
update mesg_subtemplet set valid=0 where templetId in (select id from mesg_templet where templetCode = 'sms_CreateMogobaoLklBillByBill') and templetType=1;

insert into mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_CreateMogobaoLklBillByBill_before3'), 3, '蘑菇宝还款提醒', '您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，扣款时间为${dueDate}17:00，请确保尾号为${cardTail}的借记卡存有全额租金。蘑菇租房400-800-4949', 1, 1, '', 'MODULE_MyBill');
update mesg_subtemplet set valid=0 where templetId in (select id from mesg_templet where templetCode = 'sms_CreateMogobaoLklBillByBill_before3') and templetType=1;

insert into mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_CreateMogobaoLklBillByBill_payday'), 3, '蘑菇宝还款提醒', '您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，今日将从尾号为${cardTail}的借记卡自动扣除，请确保存有全额租金，否则将被退房。蘑菇租房400-800-4949', 1, 1, '', 'MODULE_MyBill');
update mesg_subtemplet set valid=0 where templetId in (select id from mesg_templet where templetCode = 'sms_CreateMogobaoLklBillByBill_payday') and templetType=1;

update mesg_subtemplet set valid=0 where templetId in (select id from mesg_templet where templetCode = 'sms_renter_repayPlan') and templetType=1;
