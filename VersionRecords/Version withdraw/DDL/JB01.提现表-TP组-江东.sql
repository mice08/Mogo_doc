
/*提现审核表  */
use mogoroomdb;

CREATE TABLE `risk_withdrawexam` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` int(11) NOT NULL COMMENT '用户id',
  `userType` tinyint(2) NOT NULL COMMENT '用户类型',
  `doneCode` int(11) NOT NULL COMMENT '账务流水号',
  `amount` decimal(10,2) NOT NULL COMMENT '提现金额',
  `bankId` int(11) DEFAULT NULL COMMENT '银行ID',
  `bankName` varchar(25) NOT NULL COMMENT '收款银行',
  `bankAcctName` varchar(50) NOT NULL COMMENT '收款人姓名',
  `bankCardNumber` varchar(32) NOT NULL COMMENT '收款银行卡号',
  `withdrawStatus` char(4) NOT NULL COMMENT '提现状态(DDSH:等待审核 CKCG:出款成功 DDCK:等待出款 JJTX:拒绝提现 CXTX:撤销提现 TTSB:提现失败)',
  `valid` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效 1:有效)',
  `outTime` datetime  COMMENT '出款时间',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `createByType` int(11) DEFAULT NULL COMMENT '创建人类型',
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `updateBy` int(11) NOT NULL COMMENT '修改人',
  `updateByType` int(11) DEFAULT NULL COMMENT '修改人类型',
  `soDoneCode` int(32) NOT NULL COMMENT '操作流水号',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`) USING BTREE,
  KEY `doneCode` (`doneCode`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='提现审核表';


CREATE TABLE `risk_withdrawexam_operlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `riskWithdrawexamId` int(11) NOT NULL COMMENT '用户提现审核表id',
  `operType` tinyint(1) NOT NULL COMMENT '操作类型(1:提交出款 2:人工审核 3:风控规则审核 4:人工撤销)',
  `operResult` tinyint(1) NOT NULL COMMENT '操作结果(11:成功 10:失败 21:拒绝 20:通过 30:等待审核 31:通过 40:拒绝 41:通过)',
  `remark` varchar(127) COMMENT '备注',
  `valid` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效 1:有效)',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `createByType` int(11) DEFAULT NULL COMMENT '创建人类型',
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `updateBy` int(11) NOT NULL COMMENT '修改人',
  `updateByType` int(11) DEFAULT NULL COMMENT '修改人类型',
  `soDoneCode` int(32) NOT NULL COMMENT '操作流水号',
  PRIMARY KEY (`id`),
  KEY `riskWithdrawexamId` (`riskWithdrawexamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='提现审核操作记录表';