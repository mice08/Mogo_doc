USE mogoroomdb;

BEGIN;

DELETE FROM acct.acct_bill;
DELETE FROM acct.acct_billdtl;
DELETE FROM acct.acct_bill_tmp;
DROP TABLE IF EXISTS `acct_bill_tmp2`;

-- 创建一个账单类型临时表
CREATE TEMPORARY TABLE `acct_billtype_tmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `billType` int(11) NOT NULL COMMENT '账单类型',
  `billName` varchar(64) NOT NULL COMMENT '账单名称',
  `oldBusiType` int(11) NOT NULL COMMENT '旧系统业务类型',
  PRIMARY KEY (`id`)
);

-- 创建一个账单临时表
CREATE TABLE `acct_bill_tmp2` (
  `billId` int(11) NOT NULL AUTO_INCREMENT,
  `billType` int(11) NOT NULL COMMENT '账单类型',
  `amount` decimal(10,2) NOT NULL COMMENT '账单总金额',
  `unpayAmount` decimal(10,2) NOT NULL COMMENT '未结清费用',
  `acctId` int(11) NOT NULL COMMENT '付款账号',
  `toAcctId` int(11) DEFAULT NULL COMMENT '收款账号',
  `status` tinyint(4) NOT NULL COMMENT '状态，0无效，1有效',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(1024) NOT NULL COMMENT '备注',
  `origBillId` int(32) DEFAULT NULL COMMENT '关联账单编号',
  `deadline` date DEFAULT NULL,
  orderId varchar(32) COMMENT '订单号',
  orderType int(6)  COMMENT '订单类型',
  `fromTblName` varchar(64) DEFAULT NULL COMMENT '订单号从业务系统哪个表迁移过来的',
  `memo` varchar(128) DEFAULT NULL COMMENT '账单迁移备注',
  signedOrderId int(32) DEFAULT NULL COMMENT '关联签约单id',
   bookOrderId int(32) DEFAULT NULL COMMENT '关联预定单id',
   extId int(32) DEFAULT NULL COMMENT '扩展字段，不同的账单类型使用不同',
   paidPenalty decimal(10,2) DEFAULT NULL COMMENT '该账单已还滞纳金额',
   businessNum varchar(32) COMMENT '业务订单号',

  PRIMARY KEY (`billId`)
);


-- 先导入账单类型。
INSERT 
INTO `acct_billType_tmp`(`billType`, `billName`, oldBusiType) 
VALUES(1001, '充值账单', 224001),  -- 租客余额充值(224001)
(1001, '充值账单', 3001), -- 职业房东余额充值(3001)
(1001, '充值账单', 411001), -- 拉卡拉放款给公司(411001)
(1002, '支付定金', 216001), -- 租客支付定金(216001)
(1003, '租客支付首期款房租账单', 216002), -- 租客支付首期款房租账单(216002)
(1004, '租客支付常规款房租账单', 216003), -- 租客支付常规款房租账单(216003)
(1005, '租客支付水电煤账单', 216004), -- 租客支付水电煤账单(216004)
(1006, '退款账单', 3007), -- 职业房东退押金(3007)
(1006, '退款账单', 3008), -- 职业房东退定金(3008)
(1007, '房东赔违约金', 3009), -- 职业房东退违约金(3009),
(1008, '房东买回房租', 3015), -- 房东买回房租(3015)
(1009, '公司租金贷款给房东', 111002), -- 公司租金贷款给房东(111002)
(1010, '白条账单', -1),
(1011, '房东保证金充值', 3003), -- 职业房东保证金充值(3003)
(1011, '房东保证金充值', 311002), -- BS后台充值保证金(311002),
(1012, '转账账单', 311003), -- BS后台扣除保证金(311003)
(10001, '逾期手续费', 3013) -- 房东买回逾期手续费(3013)

;


	
 /* 业务订单状态枚举 */
 /* 初始状态(1001),处理中(1101),成功(2001),失败(3001),后续调整成功(2101),后续调整失败(3101),提现在途(1201); */
	
/* 订单类型枚举：预定单(1),签约单(2) */	

-- 租客余额充值(224001)
-- 从业务订单表迁移数据
INSERT INTO `acct_bill_tmp2`(billType,amount,unpayAmount,acctId,toAcctId,STATUS,createTime,updateTime,remark,orderId, orderType, fromTblName,memo, signedOrderId, bookOrderId, businessNum)
SELECT DISTINCT 
  btt.billType
  , bo.`payTotalAccount` amount
  , 0 -- 未付金额为0   
  , IFNULL(uam.`acctId`, -1) acctId
  , IFNULL(uam.`acctId`, -1) toAcctId -- 充值账单的from和to一样
  , 1 status -- 映射为新账单的已支付状态 
  , bo.`createTime` createTime
  , bo.`updatedTime` updateTime
  , '账单迁移'
  , bo.id orderId  -- 订单号为业务订单号
  , bo.businessType -- 订单类型为业务类型
  , 'oder_businessOrder'
  , '租客余额充值(224001)'
  , NULL
  , NULL
  , bo.businessNum
FROM
  `oder_businessOrder` bo
  INNER JOIN acct.acct_account uam 
    ON uam.`userId` = bo.`userId` AND uam.userType=4 -- 租客类型
  INNER JOIN acct_billType_tmp btt ON btt.oldBusiType=bo.businessType
  INNER JOIN bill_paymentrecord pr 
    ON bo.businessNum = pr.businessId 
WHERE
  bo.businessType IN (224001)
  AND pr.status=2 AND bo.status=2001 FOR UPDATE; -- 支付成功状态


-- 房东余额充值(旧业务类型3001)
-- 从业务订单表迁移数据
INSERT INTO acct_bill_tmp2(billType,amount,unpayAmount,acctId,toAcctId,STATUS,createTime,updateTime,remark,orderId, orderType, fromTblName,memo, signedOrderId, bookOrderId, businessNum)
SELECT DISTINCT 
  btt.billType
  , pr.money amount -- 该类型的业务订单表不存放金额，故从维金交易流水中获取
  , 0 -- 未付金额为0
  , IFNULL(uam.`acctId`, -1) acctId
  , IFNULL(uam.`acctId`, -1) toAcctId -- 充值账单的from和to一样
  , 1 -- 映射为新账单的已支付状态
  , bo.`createTime` createTime
  , bo.`updatedTime` updateTime
  , '账单迁移'
  , bo.id orderId  -- 订单号为业务订单号
  , bo.businessType -- 订单类型为业务类型
  , 'oder_businessOrder'
  , '房东余额充值(旧业务类型3001)'
  , NULL
  , NULL
  , bo.businessNum
FROM
  `oder_businessOrder` bo
  INNER JOIN acct.acct_account uam 
    ON uam.`userId` = bo.`userId` AND uam.userType=0 -- 房东类型
  INNER JOIN bill_paymentrecord pr ON bo.businessNum = pr.businessId 
  INNER JOIN acct_billType_tmp btt ON btt.oldBusiType=bo.businessType
WHERE
  bo.businessType IN (3001)
  AND pr.status=2 FOR UPDATE ; -- 支付成功状态

-- 房东保证金充值(旧业务类型3003)
-- 从业务订单表迁移数据
INSERT INTO acct_bill_tmp2(billType,amount,unpayAmount,acctId,toAcctId,STATUS,createTime,updateTime,remark,orderId, orderType, fromTblName,memo, signedOrderId, bookOrderId, businessNum)
SELECT DISTINCT 
  btt.billType
  , pr.money amount -- 该类型的业务订单表不存放金额，故从维金交易流水中获取
  , 0 -- 未付金额为0
  , IFNULL(uam.`acctId`, -1) acctId
  , IFNULL(uam.`acctId`, -1) toAcctId -- 充值账单的from和to一样
  , 1 -- 映射为新账单的已支付状态
  , bo.`createTime` createTime
  , bo.`updatedTime` updateTime
  , '账单迁移'
  , bo.id orderId  -- 订单号为业务订单号
  , bo.businessType -- 订单类型为业务类型
  , 'oder_businessOrder'
  , '房东保证金充值(旧业务类型3003)'
  , NULL
  , NULL
  , bo.businessNum
FROM
  `oder_businessOrder` bo
  INNER JOIN acct.acct_account uam 
    ON uam.`userId` = bo.`userId` AND uam.userType=0 -- 房东类型
  INNER JOIN bill_paymentrecord pr ON bo.businessNum = pr.businessId 
  INNER JOIN acct_billType_tmp btt ON btt.oldBusiType=bo.businessType
WHERE
  bo.businessType IN (3003)
  AND pr.status=2 FOR UPDATE ; -- 支付成功状态

-- 充值账单(BS后台充值保证金(311002))
-- 从业务订单表迁移数据
INSERT INTO acct_bill_tmp2(billType,amount,unpayAmount,acctId,toAcctId,STATUS,createTime,updateTime,remark, orderId, orderType, fromTblName, memo, signedOrderId, bookOrderId, businessNum)
SELECT DISTINCT 
  btt.billType
  , abs(uw.fluctuantMoney) amount
  , 0 -- 其余状态未付金额为0
  , uam.acctId  acctId
  , uam.acctId toAcctId
  , 1 status -- 映射为新账单的已支付状态 
  , bo.`createTime` createTime
  , bo.`updatedTime` updateTime
  , '账单迁移'
  , bo.id orderId 
  , bo.businessType orderType
  , 'oder_businessOrder'
  , '转账账单(BS后台充值保证金(311002))'
  , NULL
  , NULL
  , bo.businessNum
FROM
  `oder_businessOrder` bo
  INNER JOIN user_wateraccount uw ON uw.serialNum = bo.businessNum 
  INNER JOIN acct.acct_account uam ON uam.wjIdentity=uw.accountNum
  INNER JOIN acct_billType_tmp btt ON btt.oldBusiType=bo.businessType
WHERE
  bo.businessType IN (311002)
   AND uw.status=1 FOR UPDATE; -- 支付成功状态

-- 转账账单(BS后台扣除保证金(311003))
-- 从业务订单表迁移数据
INSERT INTO acct_bill_tmp2(billType,amount,unpayAmount,acctId,toAcctId,STATUS,createTime,updateTime,remark, orderId, orderType, fromTblName, memo, signedOrderId, bookOrderId, businessNum)
SELECT DISTINCT 
  btt.billType
  , abs(uw.fluctuantMoney) amount
  , 0 -- 其余状态未付金额为0
  , uam.acctId acctId
  ,  (SELECT acctId from acct.acct_account WHERE wjIdentity='288888888888')  toAcctId
  , 1 status -- 映射为新账单的已支付状态 
  , bo.`createTime` createTime
  , bo.`updatedTime` updateTime
  , '账单迁移'
  , bo.id orderId 
  , bo.businessType orderType
  , 'oder_businessOrder'
  , '转账账单(BS后台扣除保证金(311003))'
  , NULL
  , NULL
  , bo.businessNum
FROM
  `oder_businessOrder` bo
  INNER JOIN user_wateraccount uw ON uw.serialNum = bo.businessNum 
  INNER JOIN acct.acct_account uam ON uam.wjIdentity=uw.accountNum
  INNER JOIN acct_billType_tmp btt ON btt.oldBusiType=bo.businessType
WHERE
  bo.businessType IN (311003)
   AND uw.status=1 FOR UPDATE; -- 支付成功状态


-- 拉卡拉放款给公司(411001)迁移数据
INSERT INTO acct_bill_tmp2(billType,amount,unpayAmount,acctId,toAcctId,STATUS,createTime,updateTime,remark, orderId, orderType, fromTblName, memo, signedOrderId, bookOrderId, businessNum)
SELECT DISTINCT 
  btt.billType
  , pr.money amount
  , 0 -- 其余状态未付金额为0
  , (SELECT acctId from acct.acct_account WHERE wjIdentity='288888888888')   acctId
  , (SELECT acctId from acct.acct_account WHERE wjIdentity='288888888888')  toAcctId
  , 1 status -- 映射为新账单的已支付状态 
  , bo.`createTime` createTime
  , bo.`updatedTime` updateTime
  , '账单迁移'
  , bo.mogoTradeId orderId  -- 订单号为预定表id，随businessType关联不同表
  , bo.businessType orderType
  , 'loan_renter_contract'
  , '拉卡拉放款给公司(411001)迁移数据'
  , NULL
  , NULL
  , bo.businessNum
FROM
  `oder_businessOrder` bo
  INNER JOIN bill_paymentrecord pr ON bo.businessNum = pr.businessId 
  INNER JOIN acct_billType_tmp btt ON btt.oldBusiType=bo.businessType
WHERE
  bo.businessType IN (411001)
   AND pr.status=2 FOR UPDATE; -- 支付成功状态
  
-- '支付定金216001'账单迁移
INSERT INTO acct_bill_tmp2(billType,amount,unpayAmount,acctId,toAcctId,STATUS,createTime,updateTime,remark, orderId, orderType, fromTblName, memo, signedOrderId, bookOrderId, businessNum)
SELECT DISTINCT 
  btt.billType
  , pr.money amount
  , 0 -- 未付金额为0
  , uam.`acctId` acctId
  , uam2.`acctId` toAcctId
  , 1 -- 映射为新账单的已支付状态
  , bo.`createTime` createTime
  , bo.`updatedTime` updateTime
  , '账单迁移'
  , bo.mogoTradeId orderId  -- 订单号为预定表id，随businessType关联不同表
  , bo.businessType orderType
  , 'oder_bookOrder'
  , '支付定金216001账单迁移'
  , NULL
  , bo.mogoTradeId
  , bo.businessNum
FROM
  `oder_businessOrder` bo
  INNER JOIN bill_paymentrecord pr ON bo.businessNum = pr.businessId
  INNER JOIN acct.acct_account uam 
    ON uam.`userId` = bo.`userId` AND uam.userType=4 -- 租客类型
  INNER JOIN acct.acct_account uam2 
    ON uam2.`wjIdentity` = pr.toMemberNum  -- 业务账单表的toMemberNum为null，故取维金交易记录的toMemberNum
  INNER JOIN acct_billType_tmp btt ON btt.oldBusiType=bo.businessType
WHERE
  bo.businessType IN (216001)
  AND pr.status=2 AND bo.status IN(2001, 2101) FOR UPDATE; -- 支付成功状态
  
-- 若在业务订单表没有关联记录，则预定表的记录为新下的订单，也需要为该订单生成账单
-- 预定单状态枚举：定金未支付(1),等待受理(2),预定已确认(3),签约(4),房东未同意(5),房源被他人预定签约(6),
--                 过期未完成签约(7),签约合同到期(8),签约被拒绝(9),预定已撤销(10),预定解除(11);
INSERT 
INTO acct_bill_tmp2 ( 
  billType
  , amount
  , unpayAmount
  , acctId
  , toAcctId
  , STATUS
  , createTime
  , updateTime
  , remark
  , deadline
  , orderId
  , orderType
  , fromTblName
  , memo
  , signedOrderId
  , bookOrderId
) 
SELECT DISTINCT 
  (SELECT billType from acct_billType_tmp WHERE oldBusiType in (216001)) billType
  , bo.deposit amount
  , bo.deposit unpayAmount    -- 新账单未付金额=总金额
  , uam.`acctId` acctId
  , uam2.`acctId` toAcctId
  , 0                                             -- 新账单待支付状态
  , bo.createTime
  , bo.createTime updateTime
  , '账单迁移'
  , bo.orderLapsedTime deadline
  , bo.id orderId  -- 订单号为预定单单号
  , 216001
  , 'oder_bookOrder'
  , '支付定金216001账单迁移'
  , NULL
  , bo.id
FROM
  oder_bookOrder bo 
  INNER JOIN acct.acct_account uam 
    ON uam.`userId` = bo.`renterId` AND uam.userType = 4 -- 租客类型
  INNER JOIN acct.acct_account uam2 
    ON uam2.`userId` = bo.`landlordId` AND uam2.userType = 0 -- 房东类型  
WHERE
  bo.status = 1  FOR UPDATE -- 定金未支付(1)
;


-- 租客支付首期款房租账单(216002), 租客支付常规款房租账单(216003), 租客支付水电煤账单(216004)账单迁移
INSERT INTO acct_bill_tmp2(billType,amount,unpayAmount,acctId,toAcctId,STATUS,createTime,updateTime,remark, orderId, orderType, fromTblName, memo, signedOrderId, bookOrderId, businessNum)
SELECT DISTINCT 
  btt.billType
  , pr.money amount
  , 0 -- 其余状态未付金额为0
  , uam.`acctId` acctId
  , uam2.`acctId` toAcctId
  , 1 -- 映射为新账单的已支付状态
  , bo.`createTime` createTime
  , bo.`updatedTime` updateTime
  , '账单迁移'
  , bo.mogoTradeId orderId  -- 订单号为业务订单单号
  , bo.businessType orderType -- 待定义
  , 'bill_saleBill'
  , ' 租客支付首期款房租账单(216002), 租客支付常规款房租账单(216003), 租客支付水电煤账单(216004)账单迁移'
  , sb.signedOrderId
  , NULL
  , bo.businessNum
FROM
  `oder_businessOrder` bo
  INNER JOIN bill_paymentrecord pr ON bo.businessNum = pr.businessId
  INNER JOIN acct.acct_account uam 
    ON uam.`userId` = bo.`userId` AND uam.userType = 4 -- 租客类型
  INNER JOIN acct.acct_account uam2 
    ON uam2.`wjIdentity` = pr.toMemberNum
  INNER JOIN acct_billType_tmp btt ON btt.oldBusiType=bo.businessType
  INNER JOIN bill_salebill sb ON sb.id = bo.mogoTradeId
WHERE
  bo.businessType IN (216002, 216003, 216004)
  AND pr.status=2 AND bo.status IN(2001, 2101)  FOR UPDATE; -- 支付成功状态
  
-- 若在业务订单表没有关联记录，则账单表的记录为新记录，也需要在新系统生成账单
-- 账单类型枚举:租客房租账单(1011),租客水电煤账单(1021),职业房东贷款账单(2011);
INSERT 
INTO acct_bill_tmp2 ( 
  billType
  , amount
  , unpayAmount
  , acctId
  , toAcctId
  , STATUS
  , createTime
  , updateTime
  , remark
  , deadline
  , orderId
  , orderType
  , fromTblName
  , memo
  , signedOrderId
  , bookOrderId
) 
SELECT DISTINCT 
  CASE WHEN sb.billType = 1011 AND sb.periodStage = 1 THEN  1003 -- 租客支付首期款房租账单(1003, 216002)
  WHEN sb.billType = 1011 AND sb.periodStage > 1 THEN 1004 -- 租客支付常规款房租账单(1004, 216003),
  WHEN sb.billType = 1021 THEN 1005  -- 租客支付水电煤账单(1005, 216004), 
  END billType
  , sb.amount amount
  , sb.amount unpayAmount 
  , uam.`acctId` acctId
  , uam2.`acctId` toAcctId
  , 0                                             -- 新账单待支付状态
  , sb.createTime
  , sb.createTime updateTime
  , '账单迁移'
  , sb.dueDate deadline
  , sb.id orderId  -- 订单号为账单表单号
  , CASE WHEN sb.billType = 1011 AND sb.periodStage = 1 THEN  216002 -- 租客支付首期款房租账单(1004, 216002)
  WHEN sb.billType = 1011 AND sb.periodStage > 1 THEN 216003 -- 租客支付常规款房租账单(1005, 216003),
  WHEN sb.billType = 1021 THEN 216004  -- 租客支付水电煤账单(1006, 216004), 
  END orderType
  , 'bill_saleBill'
  , '从bill_saleBill表迁移租客支付首期款房租账单(216002), 租客支付常规款房租账单(216003), 租客支付水电煤账单(216004)账单'
  , sb.signedOrderId
  , NULL
FROM
  bill_saleBill sb 
  INNER JOIN acct.acct_account uam 
    ON uam.`userId` = sb.`userId` AND uam.userType = 4 -- 租客类型
  INNER JOIN acct.acct_account uam2 
    ON uam2.`userId` = sb.`landlordId` AND uam2.userType = 0 -- 房东类型 
WHERE
  sb.payStatus = 0 FOR UPDATE  -- 未支付状态
;

-- 线下支付账单
INSERT 
INTO acct_bill_tmp2 ( 
  billType
  , amount
  , unpayAmount
  , acctId
  , toAcctId
  , STATUS
  , createTime
  , updateTime
  , remark
  , deadline
  , orderId
  , orderType
  , fromTblName
  , memo
  , signedOrderId
  , bookOrderId
) 
SELECT DISTINCT 
  CASE WHEN sb.billType = 1011 AND sb.periodStage = 1 THEN  1003 -- 租客支付首期款房租账单(1003, 216002)
  WHEN sb.billType = 1011 AND sb.periodStage > 1 THEN 1004 -- 租客支付常规款房租账单(1004, 216003),
  WHEN sb.billType = 1021 THEN 1005  -- 租客支付水电煤账单(1005, 216004), 
  END billType
  , sb.amount amount
  , sb.amount unpayAmount 
  , uam.`acctId` acctId
  , uam2.`acctId` toAcctId
  , 3                                             -- 新账单线下支付状态
  , sb.createTime
  , sb.createTime updateTime
  , '账单迁移'
  , sb.dueDate deadline
  , sb.id orderId  -- 订单号为账单表单号
  , CASE WHEN sb.billType = 1011 AND sb.periodStage = 1 THEN  216002 -- 租客支付首期款房租账单(1004, 216002)
  WHEN sb.billType = 1011 AND sb.periodStage > 1 THEN 216003 -- 租客支付常规款房租账单(1005, 216003),
  WHEN sb.billType = 1021 THEN 216004  -- 租客支付水电煤账单(1006, 216004), 
  END orderType
  , 'bill_saleBill'
  , '从bill_saleBill表迁移线下支付账单：租客支付首期款房租账单(216002), 租客支付常规款房租账单(216003), 租客支付水电煤账单(216004)账单'
  , sb.signedOrderId
  , NULL
FROM
  bill_saleBill sb 
  INNER JOIN acct.acct_account uam 
    ON uam.`userId` = sb.`userId` AND uam.userType = 4 -- 租客类型
  INNER JOIN acct.acct_account uam2 
    ON uam2.`userId` = sb.`landlordId` AND uam2.userType = 0 -- 房东类型 
WHERE
  sb.payStatus = 1 -- 支付状态
 AND sb.exempt = 1 -- 豁免支付
 FOR UPDATE  
;


-- 房东赔违约金(3009)账单迁移
INSERT INTO acct_bill_tmp2(billType,amount,unpayAmount,acctId,toAcctId,STATUS,createTime,updateTime,remark, orderId, orderType, fromTblName, memo, signedOrderId, bookOrderId, businessNum)
SELECT DISTINCT 
  btt.billType
  , pr.money amount
  ,  0 -- 未付金额为0
  , uam.`acctId` acctId
  , uam2.`acctId` toAcctId
  , 1 -- 映射为新账单的已支付状态
  , bo.`createTime` createTime
  , bo.`updatedTime` updateTime
  , '账单迁移'
  , bo.mogoTradeId orderId  -- 订单号为拒绝记录表id
  , bo.businessType orderType
  , 'oder_refuseorderrecord'
  , '房东赔违约金(3009)账单迁移'
  , NULL
  , ror.orderId bookOrderId
  , bo.businessNum
FROM
  `oder_businessOrder` bo
  INNER JOIN bill_paymentrecord pr ON bo.businessNum = pr.businessId
  INNER JOIN acct.acct_account uam 
    ON uam.`userId` = bo.`userId` AND uam.userType=0 -- 房东类型
  INNER JOIN acct.acct_account uam2 
    ON uam2.`wjIdentity` = pr.toMemberNum  -- 业务账单表的toMemberNum为null，故取维金交易记录的toMemberNum
  INNER JOIN acct_billType_tmp btt ON btt.oldBusiType=bo.businessType
  INNER JOIN oder_refuseorderrecord ror ON ror.id = bo.mogoTradeId
WHERE
  bo.businessType IN (3009)
  AND pr.status=2  FOR UPDATE; -- 支付成功状态


-- 若在业务订单表没有关联记录，拒绝记录也要生成账单
-- 预定单状态枚举：定金未支付(1),等待受理(2),预定已确认(3),签约(4),房东未同意(5),房源被他人预定签约(6),
--                 过期未完成签约(7),签约合同到期(8),签约被拒绝(9),预定已撤销(10),预定解除(11);
INSERT 
INTO acct_bill_tmp2 ( 
  billType
  , amount
  , unpayAmount
  , acctId
  , toAcctId
  , STATUS
  , createTime
  , updateTime
  , remark
  , deadline
  , orderId
  , orderType
  , fromTblName
  , memo
  , signedOrderId
  , bookOrderId
) 
SELECT DISTINCT 
  (SELECT billType from acct_billType_tmp WHERE oldBusiType in (3009)) billType
  , ror.liquidatedDamages amount
  , ror.liquidatedDamages unpayAmount   
  , uam.acctId acctId
  , uam2.acctId toAcctId
  , 0                                             -- 新账单待支付状态
  , ror.cerateTime createTime
  , ror.cerateTime updateTime
  , '账单迁移'
  , NULL
  , ror.id orderId  -- 订单号为预定单单号
  , 3009
  , 'oder_refuseorderrecord'
  , '房东赔违约金(3009)账单迁移'
  , NULL
  , ror.orderId bookOrderId
FROM
  oder_refuseorderrecord ror 
  INNER JOIN acct.acct_account uam 
    ON uam.`userId` = ror.landlordId AND uam.userType=0 -- 房东类型
  INNER JOIN acct.acct_account uam2 
    ON uam2.`userId` = ror.renterId AND uam2.userType=4 -- 租客类型  
  LEFT JOIN oder_businessOrder busio 
    ON busio.mogoTradeId = ror.id 
    AND busio.businessType = 3009
  LEFT JOIN   bill_paymentrecord pr
    ON busio.businessNum = pr.businessId
WHERE
  ror.liquidatedDamages > 0 AND ror.refuseType=2 -- 退定金且有有违约金
  AND (busio.id IS NULL OR pr.id IS NULL OR pr.status<>2)  FOR UPDATE -- 不存在支付记录或者支付失败
;
    

-- 房东退定金(3008)账单迁移
INSERT INTO acct_bill_tmp2(billType,amount,unpayAmount,acctId,toAcctId,STATUS,createTime,updateTime,remark, orderId, orderType, fromTblName, memo, signedOrderId, bookOrderId, businessNum)
SELECT DISTINCT 
  btt.billType
  , bo.`payTotalAccount` amount
  , 0 -- 未付金额为0
  , uam.`acctId` acctId
  , uam2.`acctId` toAcctId
  , 1 -- 映射为新账单的已支付状态
  , bo.`createTime` createTime
  , bo.`updatedTime` updateTime
  , '账单迁移'
  , bo.mogoTradeId orderId -- 为预定单id
  , bo.businessType orderType
  , 'oder_bookOrder'
  , '房东退定金(3008)账单迁移'
  , NULL
  , bo.mogoTradeId bookOrderId
  , bo.businessNum  
FROM
  `oder_businessOrder` bo
  INNER JOIN bill_paymentrecord pr ON bo.businessNum = pr.businessId
  INNER JOIN acct.acct_account uam 
    ON uam.`wjIdentity`=pr.memberNum
  INNER JOIN acct.acct_account uam2 
    ON uam2.`wjIdentity` = pr.toMemberNum  -- 业务账单表的toMemberNum为null，故取维金交易记录的toMemberNum
  INNER JOIN acct_billType_tmp btt ON btt.oldBusiType=bo.businessType
WHERE
  bo.businessType IN (3008)
  AND pr.status=2 AND bo.status IN(2001, 2101) FOR UPDATE; -- 支付成功状态

  
-- 若在业务订单表没有关联记录，则预定表的记录也可能为新的退款订单，也需要为该订单生成账单
-- 预定单状态枚举：定金未支付(1),等待受理(2),预定已确认(3),签约(4),房东未同意(5),房源被他人预定签约(6),
--                 过期未完成签约(7),签约合同到期(8),签约被拒绝(9),预定已撤销(10),预定解除(11);
INSERT 
INTO acct_bill_tmp2 ( 
  billType
  , amount
  , unpayAmount
  , acctId
  , toAcctId
  , STATUS
  , createTime
  , updateTime
  , remark
  , deadline
  , orderId
  , orderType
  , fromTblName
  , memo
  , signedOrderId
  , bookOrderId
) 
SELECT DISTINCT 
  (SELECT billType from acct_billType_tmp WHERE oldBusiType in (3008)) billType
  , bo.deposit amount
  , bo.deposit uanpayAmount   -- 新账单未付金额=总金额
  , uam.`acctId` acctId
  , uam2.`acctId` toAcctId
  , 0                                             -- 新账单待支付状态
  , bo.createTime
  , bo.createTime updateTime
  , '账单迁移'
  , bo.orderLapsedTime deadline
  , bo.id orderId  -- 订单号为预定单单号
  , 3008
  , 'oder_bookOrder'
  , '房东退定金3008账单迁移'
  , NULL
  , bo.id bookOrderId
FROM
  oder_bookOrder bo 
  INNER JOIN acct.acct_account uam 
    ON uam.`userId` = bo.landlordId AND uam.userType = 0 -- 房东类型
  INNER JOIN acct.acct_account uam2 
    ON uam2.`userId` = bo.renterId AND uam2.userType = 4 -- 租客类型 
  LEFT JOIN oder_businessOrder busio 
    ON busio.mogoTradeId = bo.id 
    AND busio.businessType = 3008
  LEFT JOIN bill_paymentrecord pr
    ON busio.businessNum = pr.businessId 
WHERE
  bo.refundStatus = 2  -- 等待退款状态
  AND (busio.id IS NULL OR pr.id IS NULL OR bo.status NOT IN (2001,2101) OR pr.status<>2)  FOR UPDATE -- 不存在支付记录或者支付失败
;
  
  
-- 房东退押金(3007)
INSERT INTO acct_bill_tmp2(billType,amount,unpayAmount,acctId,toAcctId,STATUS,createTime,updateTime,remark, orderId, orderType, fromTblName, memo, signedOrderId, bookOrderId, businessNum)
SELECT DISTINCT 
  btt.billType
  , pr.money amount -- 业务订单表里没有金额，故在维金交易记录里找
  , 0 -- 未付金额为0
  , uam.`acctId` acctId
  , uam2.`acctId` toAcctId
  , 1 -- 映射为新账单的已支付状态
  , bo.`createTime` createTime
  , bo.`updatedTime` updateTime
  , '账单迁移'
  , bo.mogoTradeId orderId  -- 订单号为退房退款申请记录表id
  , bo.businessType orderType 
  , 'oder_surrenderapply'
  , ' 房东退押金(3007)账单转移'
  , sr.signedOrderId
  , NULL
  , bo.businessNum
FROM
  `oder_businessOrder` bo
  INNER JOIN bill_paymentrecord pr ON pr.businessId = bo.businessNum
  INNER JOIN acct.acct_account uam 
    ON uam.`wjIdentity`=pr.memberNum
  INNER JOIN acct.acct_account uam2 
    ON uam2.`wjIdentity` = pr.toMemberNum
  INNER JOIN acct_billType_tmp btt ON btt.oldBusiType=bo.businessType
  INNER JOIN oder_surrenderapply sr ON sr.id = bo.mogoTradeId
WHERE
  bo.businessType IN (3007)
  AND pr.status=2  FOR UPDATE; -- 支付成功状态
  
-- 房东退押金(3007):从房东退款记录表里获取未支付账单
INSERT 
INTO acct_bill_tmp2 ( 
  billType
  , amount
  , unpayAmount
  , acctId
  , toAcctId
  , STATUS
  , createTime
  , updateTime
  , remark
  , deadline
  , orderId
  , orderType
  , fromTblName
  , memo
  , signedOrderId
  , bookOrderId
) 
SELECT DISTINCT 
  (SELECT billType from acct_billType_tmp WHERE oldBusiType in (3007)) billType
  , lrr.amount amount
  , lrr.amount unpayAmount    -- 新账单未付金额=总金额
  , uam.`acctId` acctId
  , uam2.`acctId` toAcctId
  , 0                                             -- 新账单待支付状态
  , sr.createTime
  , sr.updateTime updateTime
  , '账单迁移'
  , NULL
  , sr.id orderId  -- 订单号为退房申请单号
  , 3007
  , 'oder_surrenderapply,supp_landlordrefundrecord'
  , '房东退押金(3007)账单迁移'
  , sr.signedOrderId
  , NULL bookOrderId
FROM
  oder_surrenderapply sr 
  INNER JOIN acct.acct_account uam 
    ON uam.`userId` = sr.landlordId AND uam.userType = 0 -- 房东类型
  INNER JOIN acct.acct_account uam2 
    ON uam2.`userId` = sr.renterId AND uam2.userType = 4 -- 租客类型 
  INNER JOIN supp_landlordrefundrecord lrr 
    ON lrr.surrenderApplyId=sr.id
    AND lrr.status=1  FOR UPDATE -- 订单在处理中
;


-- 房东买回房租(3015)
INSERT 
INTO acct_bill_tmp2 ( 
  billType
  , amount
  , unpayAmount
  , acctId
  , toAcctId
  , STATUS
  , createTime
  , updateTime
  , remark
  , deadline
  , orderId
  , orderType
  , fromTblName
  , memo
  , extId
  , paidPenalty
) 
SELECT DISTINCT 
  (SELECT billType from acct_billType_tmp WHERE oldBusiType in (3015)) billType
  , IFNULL(llb.buyBackAmount,0) amount -- 各项费用相加为总额
  , IFNULL(llb.buyBackAmount,0) - IFNULL(llb.repayedAmount,0) unpayAmount -- 总额-已付
  , uam.`acctId` acctId
  ,  (SELECT acctId from acct.acct_account WHERE wjIdentity='288888888888')  toAcctId -- 固定的公司账户id
  , if(llb.buyBackStatus - llb.repayedAmount > 0, 0, 1)  -- 未还清则新账单为支付状态，还清则新账单为支付完成状态
  , llb.createTime createTime
  , llb.modifyTime updateTime
  , '账单迁移'
  , llb.planDate deadline
  , llb.id orderId  -- 订单号为买回贷款表id
  , 3015
  , 'loan_landlord_buyback'
  , '房东买回房租(3015)账单转移'
  , llb.id
  , llb.repayedPenalty
FROM
  loan_landlord_buyback llb 
  INNER JOIN acct.acct_account uam 
    ON uam.`userId` = llb.landlordId AND uam.userType = 0 -- 房东类型
WHERE
  llb.status = 1 FOR UPDATE; -- 有效状态

-- 房东买回房租逾期手续费账单(3013)
INSERT 
INTO acct_bill_tmp2 ( 
  billType
  , amount
  , unpayAmount
  , acctId
  , toAcctId
  , STATUS
  , createTime
  , updateTime
  , remark
  , deadline
  , orderId
  , orderType
  , fromTblName
  , memo
  , extId
) 
SELECT DISTINCT 
  (SELECT billType from acct_billType_tmp WHERE oldBusiType in (3013)) billType
  , IFNULL(llb.lateFee,0)  amount 
  , IFNULL(llb.lateFee,0) - IFNULL(llb.repayedLateFee,0) unpayAmount -- 总额-已付
  , uam.`acctId` acctId
  ,  (SELECT acctId from acct.acct_account WHERE wjIdentity='288888888888')  toAcctId -- 固定的公司账户id
  , if(llb.lateFee - llb.repayedLateFee > 0, 0, 1)  -- 未还清则新账单为支付状态，还清则新账单为支付完成状态
  , llb.createTime createTime
  , llb.modifyTime updateTime
  , '账单迁移'
  , llb.planDate deadline
  , llb.id orderId  -- 订单号为买回贷款表id
  , 3013
  , 'loan_landlord_buyback'
  , '房东买回房租逾期手续费(3013)账单转移'
  , llb.id
FROM
  loan_landlord_buyback llb 
  INNER JOIN acct.acct_account uam 
    ON uam.`userId` = llb.landlordId AND uam.userType = 0 -- 房东类型
WHERE
  llb.status = 1 FOR UPDATE; -- 有效状态
  

-- 公司租金贷款给房东(111002)
--  LoanPayPlanEnum: PAYSTATUS1(1,"等待放款"),PAYSTATUS2(2,"放款成功"),PAYSTATUS3(3,"放款失败"),PAYSTATUS4(4,"首批放款"),PAYSTATUS5(5,"二批放款");
INSERT 
INTO acct_bill_tmp2 ( 
  billType
  , amount
  , unpayAmount
  , acctId
  , toAcctId
  , STATUS
  , createTime
  , updateTime
  , remark
  , deadline
  , orderId
  , orderType
  , fromTblName
  , memo
) 
SELECT DISTINCT 
  (SELECT billType from acct_billType_tmp WHERE oldBusiType in (111002)) billType
  , llp.actualAmount amount 
  , CASE WHEN llp.payStatus = 1 THEN llp.actualAmount
    WHEN llp.payStatus IN (2, 4, 5) THEN 0
	ELSE llp.actualAmount
	END unpayAmount
  ,  (SELECT acctId from acct.acct_account WHERE wjIdentity='288888888888')  acctId -- 固定的公司账户id
  , uam.`acctId` toAcctId
  , CASE WHEN llp.payStatus = 1 THEN 0 -- 待支付状态
    WHEN llp.payStatus IN (2, 4, 5) THEN 1 -- 支付完成状态
	ELSE 2 -- 账单撤销状态
	END status
  , llp.createTime createTime
  , llp.modifyTime updateTime
  , '账单迁移'
  , llp.planDate deadline
  , llp.id orderId  -- 订单号为放款计划表id
  , 111002
  , 'loan_landlord_payplan'
  , '公司租金贷款给房东(111002)账单转移'
FROM
  loan_landlord_payplan llp 
  INNER JOIN loan_landlord_mgmt loan
  ON loan.id = llp.loanId
  INNER JOIN acct.acct_account uam 
    ON uam.`userId` = loan.landlordId AND uam.userType = 0 FOR UPDATE; -- 房东类型

-- 去掉重复账单，只保留最终状态的账单
-- 账单状态转移：0（待支付)-->1(支付完成)-->2(撤销)
delete 
from
  acct_bill_tmp2 
where
  billId not in ( 
    select
      * 
    from
      ( 
        select
          t1.billId 
        from
          acct_bill_tmp2 t1 
        where
          not exists ( 
            select
              * 
            from
              acct_bill_tmp2 t2 
            where
              t2.orderId = t1.orderId 
              and t2.orderType = t1.orderType 
              and t2.status > t1.status
          )
      ) tmp
  ); 

-- 去除垃圾数据
delete 
from
  acct_bill_tmp2 
where
  billId not in ( 
    select
      * 
    from
      ( 
        select
          t1.billId 
        from
          acct_bill_tmp2 t1 
        where
          not exists ( 
            select
              * 
            from
              acct_bill_tmp2 t2 
            where
              t2.orderId = t1.orderId 
              and t2.orderType = t1.orderType 
              and t2.status = t1.status
              and t2.createTime > t1.createTime
          )
      ) tmp
  ); 


-- 找到新建退款账单关联的原账单id
-- STEP1: 定金，首期账单copy到临时表
create temporary table acct_bill_tmpforrefund 
select
  * 
from
  acct_bill_tmp2 
where
  orderType in (216001, 216002);-- 支付定金216001, 租客支付首期款房租账单( 216002)

-- STEP2: 为退定金账单关联原账单
UPDATE acct_bill_tmp2 t1
, acct_bill_tmpforrefund t2 
SET
  t1.origBillId = t2.billId 
WHERE
  t1.bookOrderId = t2.bookOrderId 
  AND t1.orderType = 3008                         -- 房东退定金(3008)
  AND t2.orderType = 216001; -- 支付定金216001

-- STEP3:为退押金账单关联原账单
UPDATE acct_bill_tmp2 t1
, acct_bill_tmpforrefund t2 
SET
  t1.origBillId = t2.billId 
WHERE
  t1.signedOrderId = t2.signedOrderId 
  AND t1.orderType = 3007                         -- 房东退押金(3007),
  AND t2.orderType = 216002;  -- 租客支付首期款房租账单( 216002)
-- STEP4: 删除临时表
drop temporary table acct_bill_tmpforrefund;
  
-- 把账单临时表2copy到账单临时表
INSERT 
INTO acct.acct_bill_tmp(
  `billId`
  , `billType`
  , amount
  , unpayAmount
  , `acctId`
  , `toAcctId`
  , status
  , `createTime`
  , `updateTime`
  , remark
  , `origBillId`
  , deadline
  , orderId
  , orderType
  , fromTblName
  , memo
--   , paidPenalty -- 待修改表定义后追加此列
)
SELECT 
  `billId`
  , `billType`
  , amount
  , unpayAmount
  , `acctId`
  , `toAcctId`
  , status
  , `createTime`
  , `updateTime`
  , remark
  , `origBillId`
  , deadline
  , orderId
  , orderType
  , fromTblName
  , memo
--   , paidPenalty -- 待修改表定义后追加此列
FROM acct_bill_tmp2;

-- 把临时表2的新账单信息copy到账单表
INSERT 
INTO acct.acct_bill( 
  `billId`
  , `billType`
  , amount
  , unpayAmount
  , `acctId`
  , `toAcctId`
  , status
  , `createTime`
  , `updateTime`
  , remark
  , `origBillId`
  , deadline
--   , paidPenalty -- 待修改表定义后追加此列
)
SELECT 
`billId`
  , `billType`
  , amount
  , unpayAmount
  , `acctId`
  , `toAcctId`
  , status
  , `createTime`
  , `updateTime`
  , remark
  , `origBillId`
  , deadline
--   , paidPenalty -- 待修改表定义后追加此列
FROM acct_bill_tmp2;



-- 为迁移账单建立账单详细
INSERT 
INTO acct.`acct_billDtl`(billId, billDtlType, amount) 
SELECT
  billId
  , billType
  , amount 
FROM
  acct_bill_tmp2
; 

  
-- 删除临时表
drop temporary table acct_billType_tmp;
drop table acct_bill_tmp2;

COMMIT;

