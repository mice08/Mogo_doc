/* Database name `mogoroomdb` ，新增账单冲抵表*/
use mogoroomdb;


CREATE TABLE acct.`acct_bill_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `billId` int(11) NOT NULL COMMENT '账单标识',
  `billType` int(11) DEFAULT NULL COMMENT '账单类型',
  `billOrder` int(11) DEFAULT NULL COMMENT '冲抵顺序',
  `subsId` int(11) DEFAULT NULL COMMENT '统一订购id',
  `totalAmount` decimal(10,2) DEFAULT NULL COMMENT '账单金额',
  `beforeAmount` decimal(10,2) DEFAULT NULL COMMENT '未付金额(账单未付金额-账单无需支付部分金额)',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '对冲的金额',
  `doneCode` int(11) DEFAULT NULL COMMENT '对冲的doneCode,acct_busirec.doneCode',
  `oppoBillId` int(11) DEFAULT NULL COMMENT '对冲的账单',
  `oppoBillType` int(11) DEFAULT NULL COMMENT '被冲抵的账单类型',
  `status` tinyint(3) DEFAULT NULL COMMENT '是否已经处理 0:未处理 1:已处理',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人员',
  `createByType` tinyint(3) DEFAULT NULL COMMENT '创建人类型',
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人员',
  `updateByType` tinyint(3) DEFAULT NULL COMMENT '更新人类型',
  `checkoutBillId` int(11) NOT NULL COMMENT '退房账单id',
  PRIMARY KEY (`id`),
  KEY `idx_billId` (`billId`)
) ENGINE=InnoDB  DEFAULT CHARSET = utf8mb4 COMMENT = '账单冲抵表';
