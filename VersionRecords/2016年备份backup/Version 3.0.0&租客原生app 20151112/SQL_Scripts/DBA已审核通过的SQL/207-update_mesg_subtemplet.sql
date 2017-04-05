/* Database name `mogoroomdb` ，修改消息模板 */
use mogoroomdb;

/* 极光组 */
UPDATE mesg_subtemplet SET templetContent='${name}你好，${roomInfo}房源有新预约带看需求，带看时间：${lookTime}，租客姓名：${renterName}，手机号码：${renterPhoneNum}。请尽快与租客电话沟通联系' WHERE templetId IN (SELECT id FROM `mesg_templet` WHERE templetCode='sms_landlord_guanWangYuyueSuccessNotify') ;

update mesg_subtemplet set jumpCode='MODULE_OrderList',templetContent='[确认租约]${realName}您好，房东为您添加了一份关于${communityName}小区房源的新租约，需要您的确认，请使用蘑菇租房APP登录您的相关账号（账号：${cellPhone}，密码：${password}）查看订单列表，核对租约信息并完成后续流程。畅快沟通，从此住的更好！' where templetId in (select id from mesg_templet where templetCode = 'sms_signing_wait_confirm');

UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '[合约解除，房东退款]蘑菇租房房东已向你退还${amount}元，完成财务结算和合同解除。有任何疑问可联系房东或向蘑菇租房投诉。'
WHERE mt.templetCode = 'sms_landlordRefund_affirm';

UPDATE mesg_subtemplet sub JOIN  mesg_templet temp ON temp.`id`=sub.`templetId` 
SET sub.jumpCode = 'MODULE_SignedOrder' 
WHERE temp.templetCode='sms_signing_wait_audit';

UPDATE mesg_subtemplet sub JOIN  mesg_templet temp ON temp.`id`=sub.`templetId` 
SET sub.jumpCode = 'MODULE_BookOrder' 
WHERE temp.templetCode='sms_landlord_bookOrderSuccess';

UPDATE mesg_subtemplet sub JOIN  mesg_templet temp ON temp.`id`=sub.`templetId` 
SET sub.jumpCode = 'MODULE_ReservationOrder' 
WHERE temp.templetCode='sms_landlord_guanWangYuyueSuccessNotify';

UPDATE mesg_subtemplet SET templetContent='你在“蘑菇伙伴”账户提现了${money}元,账户余额:${balance}元.若非本人操作或有疑问，请及时联系蘑菇租房！' WHERE templetId IN (SELECT id FROM `mesg_templet` WHERE templetCode='sms_landlord_withdrawal_success') ;

/* EQ组 */
UPDATE mesg_subtemplet SET templetTitle='租客预定审核', templetContent='${name}你好，${roomInfo}房源有一笔预定单，请及时进行审核，租客姓名：${renterName}，手机号码：${renterPhoneNum}。如有疑问请尽快与租客联系。' WHERE templetId IN (SELECT id FROM `mesg_templet` WHERE templetCode='sms_landlord_bookOrderSuccess') ;
UPDATE mesg_subtemplet SET templetTitle='租客签约审核', templetContent='${name}你好，${roomInfo}房源有一笔签约单，请及时进行审核，租客姓名：${renterName}，手机号码：${renterPhoneNum}。如有疑问请尽快与租客联系。' WHERE templetId IN (SELECT id FROM `mesg_templet` WHERE templetCode='sms_signing_wait_audit') ;
UPDATE mesg_subtemplet SET templetTitle='蘑菇租房租赁合同', templetContent='您好：<br />附件是您的电子租赁合同文档，请注意查收，并妥善保管。<br />如果对合同内容有疑问，或需要其它帮助，请与我们联系。<br /><br />蘑菇租房 - 4008004949' WHERE templetId IN (SELECT id FROM `mesg_templet` WHERE templetCode='sendRenterContractFile') ;

/* 发现组 */
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '${landlordName}您好，${roomInfo}房源有一笔退房申请单，请及时进行处理，租客姓名：${renterName}，手机号码：${renterPhone}。如有疑问请尽快与租客联系。'
WHERE mt.templetCode = 'sms_outhome_landlord';

