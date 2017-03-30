use mogoroomdb;
-- 默认费用类型初始化

DELETE FROM `acct`.`acct_billdtltype`;

-- 充值账单
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (1, 1001, '充值账单', 1, 1001, 0);

-- 支付定金
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (2, 1002, '支付定金', 1, 1002, 0);

-- 租客支付首期款房租账单
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (3, 1003, '租客支付首期款房租账单', 1, 1003, 0);

-- 租客支付常规款房租账单
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (4, 1004, '租客支付常规款房租账单', 1, 1004, 0);

-- 租客支付水电煤账单
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (5, 1005, '租客支付水电煤账单', 1, 1005, 0);

-- 退款账单
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (6, 1006, '退款账单', 1, 1006, 0);

-- 房东赔违约金
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (7, 1007, '房东赔违约金', 1, 1007, 0);

-- 房东买回房租
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (8, 1008, '房东买回房租', 1, 1008, 0);

-- 公司租金贷款给房东
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (9, 1009, '公司租金贷款给房东', 1, 1009, 0);

-- 白条账单
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (10, 1010, '白条账单', 1, 1010, 0);

-- 房东保证金充值
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (11, 1011, '房东保证金充值', 1, 1011, 0);

-- 转账账单
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (12, 1012, '转账账单', 1, 1012, 0);

-- 逾期手续费
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (13, 10001, '逾期手续费', 1, 10001, 0);

-- 房租
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (14, 10002, '房租', 1, 10002, 0);

-- 押金
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (15, 10003, '押金', 1, 10003, 0);

-- 定金抵扣
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (16, 10004, '定金抵扣', 1, 10004, 0);

-- 其他费用
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (17, 10008, '其他费用', 1, 10008, 0);

-- 管理费
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (18, 100001, '管理费', 1, 100001, 1);

-- 中介费
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (19, 100002, '中介费', 1, 100002, 1);

-- 物业费
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (20, 100003, '物业费', 1, 100003, 1);

-- 租金
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (21, 100004, '租金', 1, 100004, 1);

-- 垃圾费
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (22, 100005, '垃圾费', 1, 100005, 1);

-- 水费
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (23, 100006, '水费', 1, 100006, 1);

-- 电费
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (24, 100007, '电费', 1, 100007, 1);

-- 煤气费
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (25, 100008, '煤气费', 1, 100008, 1);

-- 宽带费
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (26, 100009, '宽带费', 1, 100009, 1);

-- 有线电视费
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (27, 100010, '有线电视费', 1, 100010, 1);

-- 供暖费
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (28, 100011, '供暖费', 1, 100011, 1);

-- 杂费
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (29, 100012, '杂费', 1, 100012, 1);

-- 赔偿金
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (30, 100013, '赔偿金', 1, 100013, 1);

-- 门卡押金
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (31, 1000000, '门卡押金', 1, 1000000, 2);

-- 钥匙押金
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (32, 1000001, '钥匙押金', 1, 1000001, 2);

-- 家具押金
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (33, 1000002, '家具押金', 1, 1000002, 2);

-- 家电押金
INSERT INTO `acct`.`acct_billdtltype` (`id`, `billDtlType`, `billDtlName`, `status`, `sort`, `usageType`) VALUES (34, 1000003, '家电押金', 1, 1000003, 2);









delete from `user_landlord_billdtltype`;

-- 门卡押金
INSERT INTO `user_landlord_billdtltype` (`landlordId`, `billDtlType`, `createTime`) VALUES (0, 1000000, NOW());

-- 钥匙押金
INSERT INTO `user_landlord_billdtltype` (`landlordId`, `billDtlType`, `createTime`) VALUES (0, 1000001, NOW());

-- 家具押金
INSERT INTO `user_landlord_billdtltype` (`landlordId`, `billDtlType`, `createTime`) VALUES (0, 1000002, NOW());

-- 家电押金
INSERT INTO `user_landlord_billdtltype` (`landlordId`, `billDtlType`, `createTime`) VALUES (0, 1000003, NOW());

-- 管理费
INSERT INTO `user_landlord_billdtltype` (`landlordId`, `billDtlType`, `createTime`) VALUES (0, 100001, NOW());

-- 中介费
INSERT INTO `user_landlord_billdtltype` (`landlordId`, `billDtlType`, `createTime`) VALUES (0, 100002, NOW());

-- 物业费
INSERT INTO `user_landlord_billdtltype` (`landlordId`, `billDtlType`, `createTime`) VALUES (0, 100003, NOW());

-- 租金
INSERT INTO `user_landlord_billdtltype` (`landlordId`, `billDtlType`, `createTime`) VALUES (0, 100004, NOW());

-- 垃圾费
INSERT INTO `user_landlord_billdtltype` (`landlordId`, `billDtlType`, `createTime`) VALUES (0, 100005, NOW());

-- 水费
INSERT INTO `user_landlord_billdtltype` (`landlordId`, `billDtlType`, `createTime`) VALUES (0, 100006, NOW());

-- 电费
INSERT INTO `user_landlord_billdtltype` (`landlordId`, `billDtlType`, `createTime`) VALUES (0, 100007, NOW());

-- 煤气费
INSERT INTO `user_landlord_billdtltype` (`landlordId`, `billDtlType`, `createTime`) VALUES (0, 100008, NOW());

-- 宽带费
INSERT INTO `user_landlord_billdtltype` (`landlordId`, `billDtlType`, `createTime`) VALUES (0, 100009, NOW());

-- 有线电视费
INSERT INTO `user_landlord_billdtltype` (`landlordId`, `billDtlType`, `createTime`) VALUES (0, 100010, NOW());

-- 供暖费
INSERT INTO `user_landlord_billdtltype` (`landlordId`, `billDtlType`, `createTime`) VALUES (0, 100011, NOW());

-- 杂费
INSERT INTO `user_landlord_billdtltype` (`landlordId`, `billDtlType`, `createTime`) VALUES (0, 100012, NOW());

-- 赔偿金
INSERT INTO `user_landlord_billdtltype` (`landlordId`, `billDtlType`, `createTime`) VALUES (0, 100013, NOW());




-- 房东默认费用类型勾选初始化

INSERT INTO `user_landlord_billdtltype` (
	`landlordId`,
	`billDtlType`,
	`createTime`
) SELECT
	ul.id,
	t.billDtlType,
	NOW()
FROM
	user_landlord ul,
	acct.acct_billdtltype t
WHERE
	ul. STATUS = 1
AND t.billDtlType IN (
	1000000, -- 门卡押金
	1000001, -- 钥匙押金
	1000002, -- 家具押金
	1000003, -- 家电押金
	100002, -- 中介费
	100003, -- 物业费
	100006, -- 水费
	100007, -- 电费
	100008, -- 煤气费
	100009, -- 宽带费
	100010  -- 有线电视费
);