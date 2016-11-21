/* Database name `mogoroomdb` ，新增流水拆分表*/
use mogoroomdb;

CREATE TABLE `acct.acct_busibillfeedtl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `billId` int(11) NOT NULL COMMENT '账单id',
  `billType` int(11) NOT NULL COMMENT '账单类型',
  `billAmount` decimal(10,2) NOT NULL COMMENT '账单金额',
  `deadline` date DEFAULT NULL COMMENT '账单最后付款日',
  `startDate` datetime DEFAULT NULL COMMENT '开始日期',
  `endDate` datetime DEFAULT NULL COMMENT '结束日期',
  `subsId` int(11) NOT NULL COMMENT '统一订购id',
  `tradeLogId` int(11) NOT NULL COMMENT '支付行为id,acct.acct_tradelog.id',
  `recId` int(11) NOT NULL COMMENT '收款主表doneCode,acct.acct_busirec.doneCode',
  `busiBillId` int(11) NOT NULL COMMENT '账单流水id',
  `busiDtlId` int(11) DEFAULT NULL COMMENT '收款流水表id,feeid/fundid/billId',
  `feeAmount` decimal(10,2) DEFAULT NULL COMMENT '收款表拆分出的对应金额',
  `fundChannel` int(2) DEFAULT NULL COMMENT '收款渠道',
  `payTime` datetime NOT NULL COMMENT '收款时间',
  `status` tinyint(3) NOT NULL COMMENT '有效标识(0:无效 1:有效)',
  `verified` tinyint(3) DEFAULT NULL COMMENT '核销标识(0:未核销 1:已核销)',
  `verifyDate` datetime DEFAULT NULL COMMENT '核销时间',
  `verifyBy` int(11) DEFAULT NULL COMMENT '核销人员',
  `verifyByType` tinyint(3) DEFAULT NULL COMMENT '核销人员类型',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人员',
  `createByType` tinyint(3) DEFAULT NULL COMMENT '创建人类型',
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人员',
  `updateByType` tinyint(3) DEFAULT NULL COMMENT '更新人类型',
  `payee` int(11) DEFAULT NULL COMMENT '收款人',
  `payeeType` tinyint(3) DEFAULT NULL COMMENT '收款人类型',
  `userMemo` varchar(200) DEFAULT NULL COMMENT '用户收款备注',
  `proofPicGroupId` int(11) DEFAULT NULL COMMENT '凭证图片',
  `proofNumber` varchar(45) DEFAULT NULL COMMENT '凭证编号',
  PRIMARY KEY (`id`),
  KEY `idx_billId` (`billId`),
  KEY `idx_subsId` (`subsId`),
  KEY `idx_recId` (`recId`)
) ENGINE=InnoDB DEFAULT CHARSET = utf8mb4 COMMENT = '帐务流水拆分表';