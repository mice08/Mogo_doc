/* Database name `mogoroomdb` ，插入消息模板 */
use mogoroomdb;

/* EQ组 */
BEGIN;

SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_register', '租客注册通知', '租客注册通知', 1, 2, NOW(), 4, 1, 6);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '帐号注册成功', '恭喜你成为蘑菇客，你已成功注册蘑菇租房，请务必妥善保管你的账号和密码，切勿泄露！', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_renterUpdatePayPwd', '修改支付密码通知', '修改支付密码通知', 1, 2, NOW(), 4, 1, 6);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '支付密码已修改', '支付密码已修改，你的蘑菇租房账户支付密码已修改成功，请妥善保管，切勿泄露！', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_updateLoginPwd', '租客修改登录密码', '租客修改登录密码通知', 1, 2, NOW(), 4, 1, 6);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '登录密码已修改', '登录密码已修改，你的蘑菇租房登录密码已经修改成功，请妥善保管，切勿泄露！', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '登录密码已修改', '登录密码已修改，你的蘑菇租房登录密码已经修改成功，请妥善保管，切勿泄露！', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_updateCellphone', '新手机号绑定成功', '新手机号绑定成功通知', 1, 2, NOW(), 4, 1, 6);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '新手机号绑定成功', '新手机号绑定成功，这是你新绑定蘑菇租房App的手机号：${cellphone}，请牢记，若非本人更改，请及时联系蘑菇租房。', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_order_quickSign', '预约单通知', '可快速签约的预约单通知', 1, 2, NOW(), 4, 1, 1);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '预约单', '你有一个预约单可快速签约！请在6小时内完成快速签约，过期将失效！', 1, 1, NULL, 'MODULE_OrderList');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_bookOrderSuccess', '预定成功通知', '预定成功通知', 1, 2, NOW(), 4, 1, 2);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '预定成功', '恭喜你预定成功，请在3天内完成签约！', 1, 1, NULL, 'MODULE_OrderList');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '预定成功', '恭喜你预定成功，请在3天内完成签约！', 1, 1, NULL, 'MODULE_OrderList');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_refuseBookOrder', '预定失败通知', '预定失败通知', 1, 2, NOW(), 4, 1, 2);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '预定失败', '很遗憾，你有一笔预定单未通过房东审核，定金将退回。', 1, 1, NULL, 'MODULE_OrderList');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '预定失败', '很遗憾，你有一笔预定单未通过房东审核，定金将退回。', 1, 1, NULL, 'MODULE_OrderList');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_signSuccess_changed', '签约通过审核', '房东更新过签约单并通过审核', 1, 2, NOW(), 4, 1, 3);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '签约已通过', '签约已通过。恭喜你，你的签约已通过审核，房东已更改签约单租期（价格、付款方式、起租日）等相关信息。请进入签约单确认并支付首期款。', 1, 1, NULL, 'MODULE_OrderList');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_signSuccess', '签约通过审核', '房东未更新过签约单并通过审核', 1, 2, NOW(), 4, 1, 3);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '签约已通过', '签约已通过。恭喜你，你的签约已通过审核。请进入签约单确认并支付首期款。', 1, 1, NULL, 'MODULE_OrderList');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_signUnsuccess_agreeRefund', '签约未通过', '签约未通过，房东同意退还定金', 1, 2, NOW(), 4, 1, 3);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '签约未通过', '很遗憾，你的签约未通过审核，房东同意退还定金，请进入签约单确认相关操作！', 1, 1, NULL, 'MODULE_OrderList');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_signUnsuccess_disagreeRefund', '签约未通过', '签约未通过，房东不同意退还定金', 1, 2, NOW(), 4, 1, 3);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '签约未通过', '很遗憾，你的签约未通过审核，房东不同意退还定金，请进入签约单确认相关操作！', 1, 1, NULL, 'MODULE_OrderList');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_signUnsuccess_errorInfo', '签约未通过', '签约未通过，签约单资料有误', 1, 2, NOW(), 4, 1, 3);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '签约未通过', '房东审核签约单资料填写有误，请修改后重新提交！', 1, 1, NULL, 'MODULE_OrderList');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_signUnsuccess_refundAll', '签约未通过', '签约未通过，房东同意退还定金并赔付相关违约金', 1, 2, NOW(), 4, 1, 3);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '签约未通过', '很遗憾，你的签约未通过审核，房东同意退还定金并赔付相关违约金，请进入签约单确认相关操作！', 1, 1, NULL, 'MODULE_OrderList');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_signInvalid', '签约失效通知', '签约失效通知', 1, 2, NOW(), 4, 1, 3);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '签约失效', '由于你未在预定3天内完成签约,你的预定单已失效且系统将会扣除定金并转入房东账户。', 1, 1, NULL, 'MODULE_OrderList');


SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_signInvalid_timing', '签约失效定时器通知', '签约失效定时器通知', 1, 2, NOW(), 4, 1, 3);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '签约失效', '由于你未在预定3天内完成签约,你的预定单已失效。', 1, 1, NULL, 'MODULE_OrderList');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_CreateSaleBillByBill', '普通租金账单生成日通知', '普通租金账单生成日通知', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '新账单', '您${community}小区${room}室租约${startMonth}-${endMonth}月租金账单已出，最晚支付日为${dueDate}24:00，可立即登录蘑菇租房APP核对账单及付款。蘑菇租房400-800-4949', 1, 1, NULL,'MODULE_MyBill');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '新账单', '您${community}小区${room}室租约${startMonth}-${endMonth}月租金账单已出，最晚支付日为${dueDate}24:00，可立即登录蘑菇租房APP核对账单及付款。蘑菇租房400-800-4949', 1, 1, NULL, 'MODULE_MyBill');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_CreateSaleBillByBill_before3', '普通租金账单应付款3天前通知', '普通租金账单应付款3天前通知', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '新账单', '您${community}小区${room}室租约${startMonth}-${endMonth}月租金账单将在3日后逾期，请在${dueDate}24:00之前完成支付，可立即登录蘑菇租房APP核对账单及付款。蘑菇租房400-800-4949', 1, 1, NULL, 'MODULE_MyBill');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '新账单', '您${community}小区${room}室租约${startMonth}-${endMonth}月租金账单将在3日后逾期，请在${dueDate}24:00之前完成支付，可立即登录蘑菇租房APP核对账单及付款。蘑菇租房400-800-4949', 1, 1, NULL, 'MODULE_MyBill');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_CreateSaleBillByBill_payday', '普通租金账单应付款当天通知', '普通租金账单应付款当天通知', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '新账单', '您${community}小区${room}室租约${startMonth}-${endMonth}月租金账单将在今日24:00逾期，逾期未支付将会产生滞纳金，请立即登录蘑菇租房APP完成支付。蘑菇租房400-800-4949', 1, 1, NULL,'MODULE_MyBill');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '新账单', '您${community}小区${room}室租约${startMonth}-${endMonth}月租金账单将在今日24:00逾期，逾期未支付将会产生滞纳金，请立即登录蘑菇租房APP完成支付。蘑菇租房400-800-4949', 1, 1, NULL, 'MODULE_MyBill');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_CreateMogobaoLklBillByBill', '第三方蘑菇宝租金账单生成日通知', '第三方蘑菇宝租金账单生成日通知', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '新账单', '您${community}小区${room}室租约${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，扣款时间为${dueDate}17:00，请确保扣款前，尾号为${cardTail}的借记卡存有全额租金。蘑菇租房400-800-4949', 1, 1, NULL, 'MODULE_MyBill');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '新账单', '您${community}小区${room}室租约${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，扣款时间为${dueDate}17:00，请确保扣款前，尾号为${cardTail}的借记卡存有全额租金。蘑菇租房400-800-4949', 1, 1, NULL, 'MODULE_MyBill');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_CreateMogobaoLklBillByBill_before3', '第三方蘑菇宝租金账单应付款3天前通知', '第三方蘑菇宝租金账单应付款3天前通知', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '新账单', '您${community}小区${room}室租约${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，扣款时间为${dueDate}17:00，请确保扣款前，尾号为${cardTail}的借记卡存有全额租金。蘑菇租房400-800-4949', 1, 1, NULL, 'MODULE_MyBill');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '新账单', '您${community}小区${room}室租约${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，扣款时间为${dueDate}17:00，请确保扣款前，尾号为${cardTail}的借记卡存有全额租金。蘑菇租房400-800-4949', 1, 1, NULL, 'MODULE_MyBill');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_CreateMogobaoLklBillByBill_payday', '第三方蘑菇宝租金账单应付款当天通知', '第三方蘑菇宝租金账单应付款当天通知', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '新账单', '您${community}小区${room}室租约${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，今天将会从尾号为${cardTail}的借记卡自动扣除，请确保存有全额租金，否则将被退房。蘑菇租房400-800-4949', 1, 1, NULL, 'MODULE_MyBill');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '新账单', '您${community}小区${room}室租约${startMonth}-${endMonth}月蘑菇宝租金账单${amount}元，今天将会从尾号为${cardTail}的借记卡自动扣除，请确保存有全额租金，否则将被退房。蘑菇租房400-800-4949', 1, 1, NULL, 'MODULE_MyBill');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_CreateCustomBillByBill', '自定义账单通知', '自定义账单通知', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '新账单', '房东向您推送了一条关于${community}小区${room}室租约的${title}账单，金额：${amount}元，最晚支付日为${dueDate}24:00，可立即登录蘑菇租房APP核对账单及付款。如有疑问，请与房东联系。', 1, 1, NULL, 'MODULE_MyBill');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '新账单', '房东向您推送了一条关于${community}小区${room}室租约的${title}账单，金额：${amount}元，最晚支付日为${dueDate}24:00，可立即登录蘑菇租房APP核对账单及付款。如有疑问，请与房东联系。', 1, 1, NULL, 'MODULE_MyBill');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_FirstDayArrears', '账单通知', '账单通知', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '账单通知', '账单通知,你${beginAndEnd}月的租金账单已生成, 请在${date}之前完成支付。', 1, 1, NULL, 'MODULE_MyBill');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '账单通知', '账单通知,你${beginAndEnd}月的租金账单已生成, 请在${date}之前完成支付。', 1, 1, NULL, 'MODULE_MyBill');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_landlordRefund_affirm', '房东退款通知', '房东退款通知', 1, 2, NOW(), 4, 1, 4);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '房东退款', '[合约解除，房东退款]蘑菇租房房东已向你退还${amount}元，完成财务结算和合同解除。有任何疑问可联系房东或向蘑菇租房投诉。', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '房东退款', '[合约解除，房东退款]蘑菇租房房东已向你退还${amount}元，完成财务结算和合同解除。有任何疑问可联系房东或向蘑菇租房投诉。', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_complainAdd', '租客投诉', '租客投诉', 1, 2, NOW(), 4, 1, 4);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '租客投诉', '您的投诉已被受理，我们将尽快联系您，请保持手机畅通！', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '租客投诉', '您的投诉已被受理，我们将尽快联系您，请保持手机畅通！', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_complainSolve', '租客投诉解决通知', '租客投诉解决通知', 1, 2, NOW(), 4, 1, 4);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '租客投诉已解决', '投诉${complainId}已解决，如有问题请联系客服电话：400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '租客投诉已解决', '投诉${complainId}已解决，如有问题请联系客服电话：400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_complainUndo', '租客投诉撤销通知', '租客投诉撤销通知', 1, 2, NOW(), 4, 1, 4);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '租客投诉已撤销', '投诉${complainId}已撤销，如有问题请联系客服电话：400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '租客投诉已撤销', '投诉${complainId}已撤销，如有问题请联系客服电话：400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_withdrawalSuccess', '租客账户提现', '租客账户提现', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '账户提现', '你在蘑菇租房账户提现了${amount}元，余额${balance}元，若非本人操作或有疑问，请及时联系蘑菇租房', 1, 1, NULL, 'MODULE_Account');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '账户提现', '你在蘑菇租房账户提现了${amount}元，余额${balance}元，若非本人操作或有疑问，请及时联系蘑菇租房', 1, 1, NULL, 'MODULE_Account');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_rechargeSuccess', '租客账户充值', '租客账户充值', 1, 2, NOW(), 4, 1, 5);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '账户充值', '你在蘑菇租房账户充值了${amount}元，余额${balance}元，若非本人操作或有疑问，请及时联系蘑菇租房', 1, 1, NULL, 'MODULE_Account');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '账户充值', '你在蘑菇租房账户充值了${amount}元，余额${balance}元，若非本人操作或有疑问，请及时联系蘑菇租房', 1, 1, NULL, 'MODULE_Account');




SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_repairAdd', '租客提交报修通知', '租客提交报修通知', 1, 2, NOW(), 4, 1, 4);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '报修添加', '您的报修已被受理，维修人员将尽快联系您，请保持手机畅通。', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '报修添加', '您的报修已被受理，维修人员将尽快联系您，请保持手机畅通。', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_repairSolve', '租客报修完成通知', '租客报修完成通知', 1, 2, NOW(), 4, 1, 4);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '报修已完成', '您的报修${repairId}已完成！如有问题请联系客服电话：400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '报修已完成', '您的报修${repairId}已完成！如有问题请联系客服电话：400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_repairUndo', '租客撤销报修通知', '租客撤销报修通知', 1, 2, NOW(), 4, 1, 4);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '报修已撤销', '您的报修${repairId}申请已撤销，如有问题请联系客服电话：400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '报修已撤销', '您的报修${repairId}申请已撤销，如有问题请联系客服电话：400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_mogobao_lakala_failure', '蘑菇宝资料有误通知', '蘑菇宝和租金借款通知', 1, 2, NOW(), 4, 1, 6);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '蘑菇宝和租金借款', '您的蘑菇宝申请资料填写有误，请仔细核对关联借记卡和身份证照片等信息后，在当天22点前完成修改再次提交审核。蘑菇租房400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '蘑菇宝和租金借款', '您的蘑菇宝申请资料填写有误，请仔细核对关联借记卡和身份证照片等信息后，在当天22点前完成修改再次提交审核。蘑菇租房400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_mogobao_lakala_success', '蘑菇宝申请成功（借记卡）', '蘑菇宝申请成功（借记卡）', 1, 2, NOW(), 4, 1, 6);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '蘑菇宝和租金借款', '您的蘑菇宝已通过审核，请每月交租日前在蘑菇宝关联借记卡中存够租金，按时支付房租。蘑菇租房400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '蘑菇宝和租金借款', '您的蘑菇宝已通过审核，请每月交租日前在蘑菇宝关联借记卡中存够租金，按时支付房租。蘑菇租房400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_renter_mogobao_mogo_success', '蘑菇宝申请成功（APP）', '蘑菇宝申请成功（APP）', 1, 2, NOW(), 4, 1, 6);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '蘑菇宝和租金借款', '您的蘑菇宝已通过审核，请每月交租日前登录蘑菇租房APP支付房租。蘑菇租房400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '蘑菇宝和租金借款', '您的蘑菇宝已通过审核，请每月交租日前登录蘑菇租房APP支付房租。蘑菇租房400-800-4949', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_roomRented_1_notify', '房源已售消息通知', '房源已售消息通知（预约来源官网）', 1, 2, NOW(), 4, 1, 1);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '房源已售消息', '亲爱的，您预约的${roomAddress}房源已被他人预定/签约。岁月就是这样，总是把最好的留在后面，而您可以不用等，登录蘑菇，重新寻找属于您的房源。', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '房源已售消息', '亲爱的，您预约的${roomAddress}房源已被他人预定/签约。岁月就是这样，总是把最好的留在后面，而您可以不用等，登录蘑菇，重新寻找属于您的房源。', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_roomRented_2_notify', '房源已售消息通知', '房源已售消息通知（看房在当前之后）', 1, 2, NOW(), 4, 1, 1);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 1, '房源已售消息', '亲爱的，您预约的${roomAddress}房源已被他人提前直接预定/签约。很抱歉我们未能为您挽留住Ta，生活就是这样，要走的终归留不住，但您不必强留，登录蘑菇，还有更好的房源在等您。', 1, 1, NULL, 'MODULE_MsgDetail');

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '房源已售消息', '亲爱的，您预约的${roomAddress}房源已被他人提前直接预定/签约。很抱歉我们未能为您挽留住Ta，生活就是这样，要走的终归留不住，但您不必强留，登录蘑菇，还有更好的房源在等您。', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sms_roomRented_3_notify', '房源已售消息通知', '房源已售消息通知（预约来源APP）', 1, 2, NOW(), 4, 1, 1);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 3, '房源已售消息', '亲爱的，您预约的${roomAddress}房源已被他人预定/签约。岁月就是这样，总是把最好的留在后面，而您可以不用等，登录蘑菇，重新寻找属于您的房源。', 1, 1, NULL, 'MODULE_MsgDetail');



SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet`(id, templetCode, templetName, templetDesc, STATUS, createBy, createTime,createByType, valid, businessType)
VALUES(@i, 'sendRenterContractFile', '租客发送合同图片', '租客发送合同图片', 1, 2, NOW(), 4, 1, 3);

SET @ii = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet`(id, templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode)
VALUES(@ii, @i, 2, '签约合同', '蘑菇租房租房合同,详情请见附件。', 1, 1, NULL, '');

COMMIT;

/* 发现组 */
BEGIN;
SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`,`templetCode`,`templetName`,`templetDesc`,`status`,`createBy`,`createTime`,`createByType`,`updateBy`,`updateTime`,`updateByType`,`valid`,`businessType`)
VALUES(@i,'sms_renter_push_customBill','房东推送自定义账单','房东推送自定义账单','1','2',NOW(),'4',NULL,NULL,NULL,'1','5');

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'1','房东推送自定义账单','您的房东已为您${roomInfo}推送账单，请登录蘑菇租房APP查看账单并及时支付。','1','1',NULL,NULL);

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'3','房东推送自定义账单','您的房东已为您${roomInfo}推送账单，请登录蘑菇租房APP查看账单并及时支付。','1','1',NULL,'MODULE_MyBill');

SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`,`templetCode`,`templetName`,`templetDesc`,`status`,`createBy`,`createTime`,`createByType`,`updateBy`,`updateTime`,`updateByType`,`valid`,`businessType`)
VALUES(@i,'sms_renter_revoke_customBill','房东撤销自定义账单','房东撤销自定义账单','1','2',NOW(),'4',NULL,NULL,NULL,'1','5');

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'1','房东撤销自定义账单','您的房东已将您${roomInfo}的推送账单撤销，请登录蘑菇租房APP查看账单确认。','1','1',NULL,NULL);

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'3','房东撤销自定义账单','您的房东已将您${roomInfo}的推送账单撤销，请登录蘑菇租房APP查看账单确认。','1','1',NULL,'MODULE_MyBill');


SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`,`templetCode`,`templetName`,`templetDesc`,`status`,`createBy`,`createTime`,`createByType`,`updateBy`,`updateTime`,`updateByType`,`valid`,`businessType`)
VALUES(@i,'sms_renter_update_customBill','房东修改自定义账单','房东修改自定义账单','1','2',NOW(),'4',NULL,NULL,NULL,'1','5');

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'1','房东修改自定义账单','您的房东已修改您${roomInfo}的推送账单，请登录蘑菇租房APP查看修改后的账单并及时支付。','1','1',NULL,NULL);

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'3','房东修改自定义账单','您的房东已修改您${roomInfo}的推送账单，请登录蘑菇租房APP查看修改后的账单并及时支付。','1','1',NULL,'MODULE_MyBill');
COMMIT;

/* EQ组 */
BEGIN;
SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mesg_templet` (`id`,`templetCode`,`templetName`,`templetDesc`,`status`,`createBy`,`createTime`,`createByType`,`updateBy`,`updateTime`,`updateByType`,`valid`,`businessType`)
VALUES(@i,'sms_landlordinfo_afterpaid_withdefinedbill','推送账单已被支付','自定义账单支付成功后发送信息','1','2',NOW(),'4',NULL,NULL,NULL,'1','5');

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'1','推送账单已被支付', '${roomInfo}的租客${renterName}已成功支付您的推送账单，请登录蘑菇伙伴查看账务。','1','1',NULL,NULL);

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'3','推送账单已被支付', '${roomInfo}的租客${renterName}已成功支付您的推送账单，请登录蘑菇伙伴查看账务。','1','1',NULL,'');
COMMIT;

/* 极光组 */
BEGIN;
 delete from `mesg_subtemplet` where `templetId` in (SELECT id FROM mesg_templet WHERE templetCode='sms_bookOrder_price_update');
 delete from `mesg_templet` where `templetCode` = 'sms_bookOrder_price_update';
 INSERT INTO `mesg_templet` ( `templetCode`,`templetName`,`templetDesc`,`status`, `createBy`, `createTime`,`createByType`, `updateBy`, `updateTime`, `updateByType`, `valid`, `businessType`) 
 VALUES('sms_bookOrder_price_update','定金更新提醒','定金更新提醒',1,2,NOW(),5,NULL,NULL,NULL,1,2);
 INSERT INTO `mesg_subtemplet` (`templetId`, `templetType`, `templetTitle`, `templetContent`, `status`, `valid`, `outTempletId`, `jumpCode`) 
 VALUES((SELECT id FROM mesg_templet WHERE templetCode='sms_bookOrder_price_update'),3,'定金已更新','[定金已更新]房东为您更新了订单的定金 等信息，请在60分钟内完成支付，超时未支付订单将失效',1,1,NULL,'MODULE_OrderList');
COMMIT;



/* 极光组 */
BEGIN;
SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_templet');
INSERT INTO `mogoroomdb`.`mesg_templet` (`id`,`templetCode`,`templetName`,`templetDesc`,`status`,`createBy`,`createTime`,`createByType`,`updateBy`,`updateTime`,`updateByType`,`valid`,`businessType`)
VALUES(@i,'sms_signing_wait_confirm','签约确认通知','签约确认通知','1','2',NOW(),'4',NULL,NULL,NULL,'1','3');

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'1','签约确认通知','请确认租约','1','1',NULL,NULL);

SET @ii = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='mesg_subtemplet');
INSERT INTO `mogoroomdb`.`mesg_subtemplet` (`id`,`templetId`,`templetType`,`templetTitle`,`templetContent`,`status`,`valid`,`outTempletId`,`jumpCode`)
VALUES (@ii,@i,'3','签约确认通知','请确认租约','1','1',NULL,NULL);

update mesg_subtemplet set jumpCode='MODULE_OrderList',templetContent='${realName}您好，房东为您添加了一份关于${communityName}小区房源的新租约，需要您的确认，请立即查看订单列表，核对租约信息并完成后续流程。畅快沟通，从此住的更好！' where templetId in (select id from mesg_templet where templetCode = 'sms_signing_wait_confirm');
COMMIT;

/* 闪电组 */
BEGIN;
INSERT INTO mesg_templet (templetCode,templetName,templetDesc,STATUS,createBy,createTime,createByType,valid) VALUES ('message_attack_warning','短信预警通知','短信预警通知',1,2,NOW(),3,1);
SELECT @templetId:= id FROM mesg_templet WHERE  templetCode = 'message_attack_warning';			
INSERT INTO mesg_subtemplet(templetId,templetType,templetTitle,templetContent,STATUS,valid,outTempletId,jumpCode)  VALUES(@templetId,1,'短信攻击预警','短信攻击预警：${content}',1,1,NULL,'maw');	
COMMIT;
