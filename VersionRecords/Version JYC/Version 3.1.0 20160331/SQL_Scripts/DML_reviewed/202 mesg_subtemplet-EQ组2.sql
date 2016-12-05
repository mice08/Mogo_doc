/*  Database name `mogoroomdb` ，消息新增与更新*/
use mogoroomdb;

#更新推送子模板(签约资料有误)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '[签约资料有误]很遗憾，您提交的签约单已被退回（备注：资料有误），请立即登录蘑菇租房APP修改资料并重新提交。若有疑问，请与房东联系了解详情。【蘑菇租房-让我们住得更好】',
    ms.templetTitle = '签约资料有误'
WHERE mt.templetCode = 'sms_renter_signUnsuccess_errorInfo'
  AND ms.`templetType` = 3;

#更新推送子模板(房东审核不同意(签约失败))
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '[签约失败]很遗憾，您提交的签约单已被退回（备注：拒绝签约），定金将退回您的支付账户，请注意查收。若有疑问，请与房东联系了解详情。【蘑菇租房-让我们住得更好】',
    ms.templetTitle = '签约失败'
WHERE mt.templetCode = 'sms_renter_signUnsuccess_agreeRefund'
  AND ms.`templetType` = 3;
  
  
#更新推送子模板(房东审核通过，待支付首期款(签约待支付))
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '[签约待支付]恭喜！您提交的签约单已通过审核流程，立即查看蘑菇租房-订单管理-支付首期款-完成签约。想要与好房源终成眷属，只差最后一步，赶快行动吧！【蘑菇租房-让我们住得更好】',
    ms.templetTitle = '签约待支付'
WHERE mt.templetCode = 'sms_renter_signSuccess'
  AND ms.`templetType` = 3;
  
  
#更新短信子模板(租客首期款支付成功)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '恭喜！您已成功签约房源：${contractInfo}。我们祝您租住安心，生活愉快。关注蘑菇租房微信号“mogoroom”，还可和10万白领做朋友！'
WHERE mt.templetCode = 'sms_sendPayFirstPhaseMessage'
  AND ms.`templetType` = 1;
  
  
 #更新短信子模板(房东发起签约(针对已注册租客))
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '${renterName}您好，房东${landlordName}先生/女士向您发送了一份租约合同，需要您的确认，立即登录蘑菇租房APP，核对租约信息并完成签约流程。畅快沟通，让我们住的更好！'
WHERE mt.templetCode = 'sms_signing_wait_confirm'
  AND ms.`templetType` = 1;
  
 #删除推送消息子模板(房东发起签约(针对已注册租客，只发送短信，删除推送消息))
DELETE 
  ms 
FROM
  mesg_subtemplet AS ms,
  mesg_templet AS mt 
WHERE ms.`templetId` = mt.`id` 
  AND mt.templetCode = 'sms_signing_wait_confirm' 
  AND ms.`templetType` = 3 ;
  
  
#新增短信模板(房东发起签约(针对未注册租客))
BEGIN;

SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_signing_wait_confirm_new_renter', '签约确认通知', '签约确认通知', 1, 2, NOW(), 4, 1, 3);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '签约确认通知', '${renterName}您好，房东${landlordName}先生/女士向您发送了一份租约合同，需要您的确认，请立即下载安装蘑菇租房APP（下载地址http://www.mogoroom.com/pages/activity/AppDown.jsp ），并使用账号密码登录（您的账号：${cellPhone}，临时密码：${password}）核对租约信息并完成签约流程。登录后请及时修改账号密码。若有疑问，请与房东联系了解详情。', 1, 1, NULL, 'MODULE_OrderList');

COMMIT;

  
      #更新消息推送子模板(房东发起转客合同(已注册租客))
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '${renterName}您好，我是您的房东${landlordName}先生/女士，很高兴在第一时间通知您，为了提升我们的租住体验和服务品质，我已与白领租房平台@蘑菇租房开展合作，特别邀请您使用和体验蘑菇租房APP，您可以使用蘑菇租房APP在线查询房租、水电煤，在线申请物品报修等功能，更有十万单身白领等着您一起参与社区活动。赶快使用您的账号：${cellPhone}，登录蘑菇租房APP，体验优质服务吧。若有疑问，请与我进行联系。'
WHERE mt.templetCode = 'sms_additional_renter'
  AND ms.`templetType` = 1;
  
  #新增短信模板(房东补录租约(针对未注册租客))
BEGIN;

SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_additional_new_renter', '补录租约提醒', '补录租约提醒', 1, 2, NOW(), 5, 1, 3);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '补录租约提醒', '${renterName}您好，我是您的房东${landlordName}先生/女士，很高兴在第一时间通知您，为了提升我们的租住体验和服务品质，我已与白领租房平台@蘑菇租房开展合作，特别邀请您使用和体验蘑菇租房APP，蘑菇租房APP提供在线查询房租、水电煤，在线申请物品报修等功能，更有十万单身白领等着您一起参与社区活动。赶快下载蘑菇租房APP，体验优质服务吧，您的体验账号（账号：${cellPhone}，临时密码：${password}），蘑菇租房APP下载地址（http://www.mogoroom.com/pages/activity/AppDown.jsp ），登录后请及时修改账号密码哦。若有疑问，请与我进行联系。', 1, 1, NULL, NULL);

COMMIT;


 #更新发送短信子模板(蘑菇宝审核资料有误)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '很遗憾，您提交的蘑菇宝签约单已被退回（备注：资料有误），请立即登录蘑菇租房APP并在今日24点前完成资料修改和提交。蘑菇租房400-800-4949'
WHERE mt.templetCode = 'sms_renter_mogobao_lakala_failure'
  AND ms.`templetType` = 1;
  
  
  #删除推送消息子模板(蘑菇宝审核资料有误))
DELETE 
  ms 
FROM
  mesg_subtemplet AS ms,
  mesg_templet AS mt 
WHERE ms.`templetId` = mt.`id` 
  AND mt.templetCode = 'sms_renter_mogobao_lakala_failure' 
  AND ms.`templetType` = 3 ;
  
  
   #更新发送短信子模板(蘑菇宝审核不通过（终审不过/金融部不过）)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '很遗憾，您提交的蘑菇宝签约单已被退回（备注：终审不通过），请登录蘑菇租房APP查看详情，若有疑问，请与我们联系，蘑菇租房400-800-4949'
WHERE mt.templetCode = 'sms_renter_mogobao_end_failure'
  AND ms.`templetType` = 1;
  
  
  #删除推送消息子模板(蘑菇宝审核不通过（终审不过/金融部不过）))
DELETE 
  ms 
FROM
  mesg_subtemplet AS ms,
  mesg_templet AS mt 
WHERE ms.`templetId` = mt.`id` 
  AND mt.templetCode = 'sms_renter_mogobao_end_failure' 
  AND ms.`templetType` = 3 ;
  
  
   #更新发送短信子模板(蘑菇宝审核通过（拉卡拉蘑菇宝）)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '恭喜！您提交的蘑菇宝签约单已通过审核流程，今天起做个幸福的人！付1的轻松生活，从今天开启！但不要忘记每月按时在尾号为${cardTail}的借记卡中存够租金哦。蘑菇租房400-800-4949'
WHERE mt.templetCode = 'sms_renter_mogobao_lakala_success'
  AND ms.`templetType` = 1;
  
  
  #删除推送消息子模板(蘑菇宝审核通过（拉卡拉蘑菇宝）)
DELETE 
  ms 
FROM
  mesg_subtemplet AS ms,
  mesg_templet AS mt 
WHERE ms.`templetId` = mt.`id` 
  AND mt.templetCode = 'sms_renter_mogobao_lakala_success' 
  AND ms.`templetType` = 3 ;
  
  
  #更新发送短信子模板(蘑菇宝审核通过（自营蘑菇宝）)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '恭喜！您提交的蘑菇宝签约单已通过审核流程，今天起做个幸福的人！付1的轻松生活，从今天开启！但不要忘记每月按时登录蘑菇租房APP支付房租哦。蘑菇租房400-800-4949'
WHERE mt.templetCode = 'sms_renter_mogobao_mogo_success'
  AND ms.`templetType` = 1;
  
  
  #删除推送消息子模板(蘑菇宝审核通过（自营蘑菇宝）)
DELETE 
  ms 
FROM
  mesg_subtemplet AS ms,
  mesg_templet AS mt 
WHERE ms.`templetId` = mt.`id` 
  AND mt.templetCode = 'sms_renter_mogobao_mogo_success' 
  AND ms.`templetType` = 3 ;
  
  
  #更新发送短信子模板(自定义账单)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '您好，您有一笔新账单，${community}小区${room}室房源#${title}#账单，金额：${amount}元，最晚支付日为${dueDate}24:00，可立即登录蘑菇租房完成支付。若有疑问，请联系房东呐。',
    ms.`jumpCode` = NULL
WHERE mt.templetCode = 'sms_CreateCustomBillByBill'
  AND ms.`templetType` = 1;
  
  
  #删除推送消息子模板(自定义账单)
DELETE 
  ms 
FROM
  mesg_subtemplet AS ms,
  mesg_templet AS mt 
WHERE ms.`templetId` = mt.`id` 
  AND mt.templetCode = 'sms_CreateCustomBillByBill' 
  AND ms.`templetType` = 3 ;
  
  
  #更新发送短信子模板(第三方蘑菇宝租金账单生成日)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，扣款时间为${dueDate}17:00，请确保尾号为{cardTail}的借记卡存有全额租金。蘑菇租房400-800-4949'                  
WHERE mt.templetCode = 'sms_CreateMogobaoLklBillByBill'
  AND ms.`templetType` = 1;
  
  
  #删除推送消息子模板(第三方蘑菇宝租金账单生成日)
DELETE 
  ms 
FROM
  mesg_subtemplet AS ms,
  mesg_templet AS mt 
WHERE ms.`templetId` = mt.`id` 
  AND mt.templetCode = 'sms_CreateMogobaoLklBillByBill' 
  AND ms.`templetType` = 3 ;
  
  
  #更新发送短信子模板(普通/自营蘑菇宝租金账单生成日)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月租金账单已生成，最晚支付日为${dueDate}24:00，可立即登录蘑菇租房APP完成付款。蘑菇租房400-800-4949'                  
WHERE mt.templetCode = 'sms_CreateSaleBillByBill'
  AND ms.`templetType` = 1;
  
  
  #删除推送消息子模板(普通/自营蘑菇宝租金账单生成日)
DELETE 
  ms 
FROM
  mesg_subtemplet AS ms,
  mesg_templet AS mt 
WHERE ms.`templetId` = mt.`id` 
  AND mt.templetCode = 'sms_CreateSaleBillByBill' 
  AND ms.`templetType` = 3 ;
  
  
 #更新发送短信子模板(第三方蘑菇宝租金账单应付款当天)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，今日将从尾号为{cardTail}的借记卡自动扣除，请确保存有全额租金，否则将被退房。蘑菇租房400-800-4949',
    ms.`templetTitle` = '租金账单逾期提醒'                  
WHERE mt.templetCode = 'sms_CreateMogobaoLklBillByBill_payday'
  AND ms.`templetType` = 1;
  
  
  #删除推送消息子模板(普通/自营蘑菇宝租金账单生成日)
DELETE 
  ms 
FROM
  mesg_subtemplet AS ms,
  mesg_templet AS mt 
WHERE ms.`templetId` = mt.`id` 
  AND mt.templetCode = 'sms_CreateMogobaoLklBillByBill_payday' 
  AND ms.`templetType` = 3 ;  
  
    
 #更新发送短信子模板(第三方蘑菇宝租金账单应付款3天前)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，扣款时间为${dueDate}17:00，请确保尾号为{cardTail}的借记卡存有全额租金。蘑菇租房400-800-4949',
    ms.`templetTitle` = '租金账单三天后逾期提醒'                  
WHERE mt.templetCode = 'sms_CreateMogobaoLklBillByBill_before3'
  AND ms.`templetType` = 1;
  
  
  #删除推送消息子模板(第三方蘑菇宝租金账单应付款3天前)
DELETE 
  ms 
FROM
  mesg_subtemplet AS ms,
  mesg_templet AS mt 
WHERE ms.`templetId` = mt.`id` 
  AND mt.templetCode = 'sms_CreateMogobaoLklBillByBill_before3' 
  AND ms.`templetType` = 3 ;  
      
    
   #更新发送短信子模板(普通/自营蘑菇宝租金账单应付款当天)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月租金账单将在今日24:00逾期，逾期未支付将会产生滞纳金，请立即登录蘑菇租房APP完成支付。蘑菇租房400-800-4949',
    ms.`templetTitle` = '租金账单逾期提醒'                  
WHERE mt.templetCode = 'sms_CreateSaleBillByBill_payday'
  AND ms.`templetType` = 1;
  
  
  #删除推送消息子模板(普通/自营蘑菇宝租金账单应付款当天)
DELETE 
  ms 
FROM
  mesg_subtemplet AS ms,
  mesg_templet AS mt 
WHERE ms.`templetId` = mt.`id` 
  AND mt.templetCode = 'sms_CreateSaleBillByBill_payday' 
  AND ms.`templetType` = 3 ; 
      

  #更新发送短信子模板(普通/自营蘑菇宝租金账单应付款3天前)
UPDATE mesg_subtemplet ms
LEFT JOIN mesg_templet mt ON mt.id = ms.templetId
SET ms.templetContent = '您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月租金账单将在3日后逾期，请在${dueDate}24:00之前完成支付，逾期将产生滞纳金。蘑菇租房400-800-4949',
    ms.`templetTitle` = '租金账单三天后逾期提醒'                  
WHERE mt.templetCode = 'sms_CreateSaleBillByBill_before3'
  AND ms.`templetType` = 1;
  
  
  #删除推送消息子模板(普通/自营蘑菇宝租金账单应付款3天前)
DELETE 
  ms 
FROM
  mesg_subtemplet AS ms,
  mesg_templet AS mt 
WHERE ms.`templetId` = mt.`id` 
  AND mt.templetCode = 'sms_CreateSaleBillByBill_before3' 
  AND ms.`templetType` = 3 ; 
  
  
    #新增短信模板(自定义账单支付后给租客推送短信)
BEGIN;

SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renterinfo_afterpaid_withdefinedbill', '自定义账单已支付通知', '自定义账单已支付通知', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '账单已付通知', '您好，您已成功支付租金账单：${community}小区${room}室房源#${title}#账单，可访问蘑菇租房查看详情。蘑菇租房400-800-4949', 1, 1, NULL, NULL);

COMMIT;


    #新增短信模板(租金账单已付通知)
BEGIN;

SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renterinfo_afterpaid_withroutinebill', '租金账单已付通知', '租金账单已付通知', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '租金账单已付通知', '您好，您已成功支付：${community}小区${room}室房源${startMonth}-${endMonth}月#租金#账单，您可访问蘑菇租房查看详情。蘑菇租房400-800-4949', 1, 1, NULL, NULL);

COMMIT;


    #新增短信模板(退房申请提交成功)
BEGIN;

SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_outhome_renter', '退房消息', '退房消息', 1, 2, NOW(), 3, 1, 7);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '退房通知', '[退房通知]其实一开始我是拒绝的，但知道您会过的更好后，我们正通知房东您的退房请求，请保持手机畅通，耐心等待【蘑菇租房-舍不得你走】', 1, 1, NULL, 'MODULE_OrderList');

COMMIT;


    #新增短信模板(租客申请，房东处理成功)
BEGIN;

SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'renter_checkout_dealwith_success', '退房成功消息', '退房成功消息', 1, 2, NOW(), 3, 1, 7);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '退房已完成', '[退房已完成]您租住的${community}小区${room}室房源的退房流程已完成，退房退款共计${amount}元，已转入您的蘑菇账户余额，立即登录蘑菇租房查看详情，若有疑问，请与房东联系呐。【蘑菇租房-舍不得你走】', 1, 1, NULL, 'MODULE_OrderList');

COMMIT;

  
    #新增短信消息模板(合同发送成功后推送短信通知)
BEGIN;

SET @i = (SELECT id FROM `mesg_templet` WHERE templetcode = 'sendRenterContractFile');


SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '电子合同发送成功', '您好，您在${sendTime}通过蘑菇租房APP向邮箱${email}发送了一份电子版租赁合同文档，请注意查收并妥善保管。畅快沟通，让我们住的更好！', 1, 1, NULL, NULL);

COMMIT;


  
    #新增推送消息模板(欢迎新室友)
BEGIN;

SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_sendWelcomeNewRoommate', '新室友入住', '新室友入住', 1, 2, NOW(), 3, 1, 3);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '欢迎新室友', '[欢迎新室友]${realName}您好，很高兴第一时间通知您，我们迎来了一位新室友，Ta是@${renterName}，会在${checkInDate}日入住咱们的小家庭，让我们一起欢迎Ta吧，颜值、姓名什么的到时候就知道啦【蘑菇租房-让我们住得更好】', 1, 1, NULL, NULL);

COMMIT;


    #新增短信模板(蘑菇宝已付短信通知)
BEGIN;

SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_repayPlan', '蘑菇宝账单已支付通知', '蘑菇宝账单已支付通知', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '蘑菇宝账单已付通知', '您好，您租住的${community}小区${room}室房源${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，已成功完成扣款，可立即登录蘑菇租房APP查看详情。蘑菇租房400-800-4949', 1, 1, NULL, NULL);

COMMIT;




UPDATE mesg_subtemplet SET mesg_subtemplet.`templetContent` = '[欢迎加入]欢迎您加入蘑菇租房，关注蘑菇租房微信号“mogoroom”，优惠打折天天送，精彩活动周周有。【蘑菇租房-让我们住得更好】'
WHERE mesg_subtemplet.`templetId` = (SELECT id FROM `mesg_templet` WHERE mesg_templet.`templetCode` LIKE 'sms_renter_register');

UPDATE mesg_subtemplet SET mesg_subtemplet.`templetContent` = '[设置支付密码成功]恭喜！您已成功设置蘑菇租房支付密码，支付密码是您使用蘑菇租房账户余额支付、提现等资金变动时的凭证，请妥善保管。【蘑菇租房-让我们住得更好】'
WHERE mesg_subtemplet.`templetId` = (SELECT id FROM `mesg_templet` WHERE mesg_templet.`templetCode` LIKE 'sms_renter_renterAddPayPwd');

UPDATE mesg_subtemplet SET mesg_subtemplet.`templetContent` = '${code}（手机验证码，十分钟内有效）畅快沟通，让我们住得更好。'
WHERE mesg_subtemplet.`templetId` = (SELECT id FROM `mesg_templet` WHERE mesg_templet.`templetCode` LIKE 'sms_renter_verificationCode');

UPDATE mesg_subtemplet SET mesg_subtemplet.`templetContent` = '[预约成功]我们已通知房东您的看房申请信息，请保持手机畅通，耐心等待，点击查看【蘑菇租房-让我们住得更好】'
WHERE mesg_subtemplet.`templetId` = (SELECT id FROM `mesg_templet` WHERE mesg_templet.`templetCode` LIKE 'sms_landlord_guanWangYuyueSuccessNotify') AND mesg_subtemplet.`templetType` = 3;

UPDATE mesg_subtemplet SET mesg_subtemplet.status = 0
WHERE mesg_subtemplet.`templetId` = (SELECT id FROM `mesg_templet` WHERE mesg_templet.`templetCode` LIKE 'sms_landlord_guanWangYuyueSuccessNotify') AND mesg_subtemplet.`templetType` = 1;


UPDATE mesg_subtemplet SET mesg_subtemplet.`templetContent` = '[预定成功]恭喜！您预定${communityName}小区房源的订单已通过审核，好房子永远属于有所准备的人，请尽快准备签约资料在3日内（${signedEndTime}之前）完成签约。【蘑菇租房-让我们住得更好】'
WHERE mesg_subtemplet.`templetId` = (SELECT id FROM `mesg_templet` WHERE mesg_templet.`templetCode` LIKE 'sms_renter_bookOrderSuccess') AND mesg_subtemplet.`templetType` = 3;


UPDATE mesg_subtemplet SET mesg_subtemplet.`status` = 0
WHERE mesg_subtemplet.`templetId` = (SELECT id FROM `mesg_templet` WHERE mesg_templet.`templetCode` LIKE 'sms_renter_bookOrderSuccess') AND mesg_subtemplet.`templetType` = 1;

UPDATE mesg_subtemplet SET mesg_subtemplet.`status` = 0
WHERE mesg_subtemplet.`templetId` = (SELECT id FROM `mesg_templet` WHERE mesg_templet.`templetCode` LIKE 'sms_renter_refuseBookOrder') AND mesg_subtemplet.`templetType` = 1;

UPDATE mesg_subtemplet SET mesg_subtemplet.templetContent = '[预定未通过]很遗憾，您预定${communityName}小区房源的订单审核未通过，定金将退回至您的支付账户，请注意查收。若有疑问，请与房东联系了解详情。【蘑菇租房-让我们住得更好】'
WHERE mesg_subtemplet.`templetId` = (SELECT id FROM `mesg_templet` WHERE mesg_templet.`templetCode` LIKE 'sms_renter_refuseBookOrder') AND mesg_subtemplet.`templetType` = 3;


UPDATE mesg_subtemplet SET mesg_subtemplet.templetContent = '[定金已更新]房东为您更新了订单的定金等信息，请在60分钟内完成支付，超时未支付订单将失效【蘑菇租房-让我们住得更好】'
WHERE mesg_subtemplet.`templetId` = (SELECT id FROM `mesg_templet` WHERE mesg_templet.`templetCode` LIKE 'sms_bookOrder_price_update');


UPDATE mesg_subtemplet SET mesg_subtemplet.`templetContent` = '【蘑菇租房】${code} （邮件验证码，30分钟内有效）畅快沟通，让我们住得更好。'
WHERE mesg_subtemplet.`templetId` = (SELECT id FROM `mesg_templet` WHERE mesg_templet.`templetCode` LIKE 'email_renter_verificationCode');

BEGIN;
SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_refuse_bookorder', '房东撤销预订单', '房东撤销预订单', 1, 2, NOW(), 4, 1, 2);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '房东撤销预订单', '[预定被撤销]房东已撤销${communityName}小区房源的预定单，定金将退回您的支付账户，请注意查收。若有疑问，请与房东联系了解详情。【蘑菇租房-让我们住得更好】', 1, 1, NULL, 'MODULE_BookOrder');
COMMIT;


BEGIN;
SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_updateprice_bookOrderSuccess', '房东修改定金后租客成功支付定金', '房东修改定金后租客成功支付定金', 1, 2, NOW(), 4, 1, 2);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '房东修改定金后租客成功支付定金', '恭喜！您已成功预定${communityName}小区房源，好房子永远属于有所准备的人，请尽快准备签约资料在${signedEndDay}日内（${signedEndTime}之前）完成签约。畅快沟通，从此住的更好！', 1, 1, NULL, 'MODULE_BookOrder');
COMMIT;


BEGIN;
SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_notShowingsCode', '未看房，房源被他人预定/签约', '未看房，房源被他人预定/签约', 1, 2, NOW(), 4, 1, 1);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '房源已预定','很抱歉地通知您，${communityName}小区房源已被他人抢先预定，重新调整下您的看房计划吧。若有疑问，请与房东联系了解详情。', 1, 1, NULL, 'MODULE_ReservationOrder');
COMMIT;

BEGIN;
SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_alreadyShowingsCode', '看房后48小时内，房源被他人预定/签约', '看房后48小时内，房源被他人预定/签约', 1, 2, NOW(), 4, 1, 1);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '房源已出租','[房源已出租]犹豫是把杀猪刀，刚转身您看过的${communityName}小区房源已被出租。没关系，更多好房又上线了，找一个更好的吧！【蘑菇租房-让我们住得更好】', 1, 1, NULL, 'MODULE_ReservationOrder');
COMMIT;


BEGIN;
SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_reserveWillOverdue_bookorder', '预定将过期', '预定将过期', 1, 2, NOW(), 4, 1, 2);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '预定将过期', '[预定将过期]您好，您${communityName}小区房源的订单签约时限将在12个小时后过期，为避免影响您顺利入住，请立即完成签约。【蘑菇租房-让我们住得更好】', 1, 1, NULL, 'MODULE_BookOrder');
COMMIT;


  
  
  


  
  
  
  
  
  
  
  
  
  
  


