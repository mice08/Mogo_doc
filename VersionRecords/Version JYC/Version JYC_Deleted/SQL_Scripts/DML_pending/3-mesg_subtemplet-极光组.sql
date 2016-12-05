/* 聚有财-租金宝、蘑菇宝管理模板 */
USE mogoroomdb;

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_dueDate_toLandLord'), 1, '聚有财常规账单逾期提醒', '[蘑菇宝]尊敬的房东，今天是您的租客${renterName}（${roomAddress}）${rentMonth}月租金的最后还款日，请督促租客及时缴纳，以免产生滞纳金。', 1, 1, '', NULL);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_dueDate_toLandLord'), 3, '聚有财常规账单逾期提醒', '[蘑菇宝]尊敬的房东，今天是您的租客${renterName}（${roomAddress}）${rentMonth}月租金的最后还款日，请督促租客及时缴纳，以免产生滞纳金。', 1, 1, '', NULL);


INSERT INTO mesg_templet (templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid, businessType) VALUES ('sms_jyc_bill_dueDate_toRenter', '聚有财常规账单逾期提醒', '聚有财常规账单逾期提醒', 1, 2, STR_TO_DATE('2016-06-16 12:35:55','%Y-%m-%d %H:%i:%s'), 3, NULL, NULL, NULL, 1, 5);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_dueDate_toRenter'), 1, '聚有财常规账单逾期提醒', '您${rentMonth}月租金的最后付款日为今天，请主动登陆蘑菇租房APP进行还款，逾期将产生不必要的滞纳金。', 1, 1, '', NULL);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_dueDate_toRenter'), 3, '聚有财常规账单逾期提醒', '您${rentMonth}月租金的最后付款日为今天，请主动登陆蘑菇租房APP进行还款，逾期将产生不必要的滞纳金。', 1, 1, '', NULL);


INSERT INTO mesg_templet (templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid, businessType) VALUES ('sms_jyc_bill_dueDate_before2_toRenter', '聚有财常规账单逾期前两天提醒', '聚有财常规账单逾期前两天提醒', 1, 2, STR_TO_DATE('2016-06-16 12:35:55','%Y-%m-%d %H:%i:%s'), 3, NULL, NULL, NULL, 1, 5);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_dueDate_before2_toRenter'), 1, '聚有财常规账单逾期前两天提醒', '您${rentMonth}月租金的最后付款日为${dueDate}，请主动登陆蘑菇租房APP进行付款，逾期将产生不必要的滞纳金。', 1, 1, '', NULL);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_dueDate_before2_toRenter'), 3, '聚有财常规账单逾期前两天提醒', '您${rentMonth}月租金的最后付款日为${dueDate}，请主动登陆蘑菇租房APP进行付款，逾期将产生不必要的滞纳金。', 1, 1, '', NULL);


INSERT INTO mesg_templet (templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid, businessType) VALUES ('sms_jyc_bill_payover_toLandLord', '聚有财常规账单支付完成', '聚有财常规账单支付完成', 1, 2, STR_TO_DATE('2016-06-16 12:35:55','%Y-%m-%d %H:%i:%s'), 3, NULL, NULL, NULL, 1, 5);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_payover_toLandLord'), 1, '聚有财常规账单支付完成', '[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomAddress}）${rentMonth}月租金已全额还款。', 1, 1, '', NULL);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_payover_toLandLord'), 3, '聚有财常规账单支付完成', '[蘑菇宝]尊敬的房东，您的租客${renterName}（${roomAddress}）${rentMonth}月租金已全额还款。', 1, 1, '', NULL);


INSERT INTO mesg_templet (templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid, businessType) VALUES ('sms_jyc_bill_payover_toRenter', '聚有财常规账单支付完成', '聚有财常规账单支付完成', 1, 2, STR_TO_DATE('2016-06-16 12:35:55','%Y-%m-%d %H:%i:%s'), 3, NULL, NULL, NULL, 1, 5);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_payover_toRenter'), 1, '聚有财常规账单支付完成', '您${rentMonth}月租金已成功缴纳，下期租金的付款日为${nextDueDate}。', 1, 1, '', NULL);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_payover_toRenter'), 3, '聚有财常规账单支付完成', '您${rentMonth}月租金已成功缴纳，下期租金的付款日为${nextDueDate}。', 1, 1, '', NULL);


INSERT INTO mesg_templet (templetCode, templetName, templetDesc, STATUS, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid, businessType) VALUES ('sms_jyc_bill_payoverall_toRenter', '聚有财常规账单支付完成', '聚有财常规账单支付完成', 1, 2, STR_TO_DATE('2016-06-16 12:35:55','%Y-%m-%d %H:%i:%s'), 3, NULL, NULL, NULL, 1, 5);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_payoverall_toRenter'), 1, '聚有财常规账单支付完成', '您${rentMonth}月租金已成功缴纳，蘑菇宝账单已结清，感谢您本次申请蘑菇宝业务。', 1, 1, '', NULL);

INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, STATUS, valid, outTempletId, jumpCode) VALUES ((SELECT id FROM mesg_templet WHERE templetCode = 'sms_jyc_bill_payoverall_toRenter'), 3, '聚有财常规账单支付完成', '您${rentMonth}月租金已成功缴纳，蘑菇宝账单已结清，感谢您本次申请蘑菇宝业务。', 1, 1, '', NULL);