USE mogoroomdb;

INSERT INTO mesg_templet (id, templetCode, templetName, templetDesc, status, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid) VALUES(53, 'sms_landlord_retrievePwd', '修改登陆密码', '修改登陆密码', 1, 2, STR_TO_DATE('2015-12-07 12:35:55','%Y-%m-%d %H:%i:%s'), 3, NULL, NULL, NULL, 1);
INSERT INTO mesg_templet (id, templetCode, templetName, templetDesc, status, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid) VALUES(54, 'sms_landlord_changePayPwd', '修改登陆密码', '修改登陆密码', 1, 2, STR_TO_DATE('2015-12-07 12:35:55','%Y-%m-%d %H:%i:%s'), 3, NULL, NULL, NULL, 1);
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, status, valid, outTempletId, jumpCode) VALUES(53, 1, '修改登陆密码', '[修改登陆密码]你正在用该手机号修改“蘑菇伙伴”App登陆密码，手机校验码：${VCode}，若非本人操作，请及时联系蘑菇租房400-800-4949。', 1, 1, '', NULL);
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, status, valid, outTempletId, jumpCode) VALUES(54, 1, '修改支付密码', '[修改支付密码]你正在使用该手机号修改“蘑菇伙伴”账户支付密码，手机校验码：${VCode}。若非本人操作，请及时联系蘑菇租房400-800-4949。', 1, 1, '', NULL);


INSERT INTO mesg_templet (id, templetCode, templetName, templetDesc, status, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid, businessType) VALUES(52, 'sms_partner_loan_payback', '租金宝买回', '租金宝买回', 1, 2, STR_TO_DATE('2015-12-07 12:35:55','%Y-%m-%d %H:%i:%s'), 3, NULL, NULL, NULL, 1, 5);
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, status, valid, outTempletId, jumpCode) VALUES(52, 1, '租金宝买回', '[租金宝买回]您的租金宝需要买回，租客${renterName}，对应房源${roomInfo}，请确保当天个人帐户余额留有足够金额${countAmount}元，已抵扣账户保证金${returnDeposit}元。其中买回本金${buyBackAmount}元，已使用租金宝手续费${feeAmount}元，退货手续费100元，滞纳金${penalty}元。蘑菇租房400-800-4949', 1, 1, NULL, NULL);
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, status, valid, outTempletId, jumpCode) VALUES(52, 3, '租金宝买回', '[租金宝买回]您的租金宝需要买回，租客${renterName}，对应房源${roomInfo}，请确保当天个人帐户余额留有足够金额${countAmount}元，已抵扣账户保证金${returnDeposit}元。其中买回本金${buyBackAmount}元，已使用租金宝手续费${feeAmount}元，退货手续费100元，滞纳金${penalty}元。蘑菇租房400-800-4949', 1, 1, NULL, NULL);



INSERT INTO mesg_templet (id, templetCode, templetName, templetDesc, status, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid) VALUES(55, 'sms_vrfCode_register', '发送校验码', '发送校验码', 1, 2, STR_TO_DATE('2015-12-07 12:35:55','%Y-%m-%d %H:%i:%s'), 3, NULL, NULL, NULL, 1);
INSERT INTO mesg_subtemplet (templetId, templetType, templetTitle, templetContent, status, valid, outTempletId, jumpCode) VALUES(55, 1, '蘑菇租房服务校验码', '蘑菇租房服务校验码：${VCode}，若非本人操作，请及时联系蘑菇租房400-800-4949。', 1, 1, '', NULL);
