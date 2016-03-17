 
USE `acct`;

DROP TABLE IF EXISTS `acct_withdrawschedule`;

CREATE TABLE `acct_withdrawschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doneCode` int(11) NOT NULL COMMENT '业务流水号',
  `oprIndex` int(11) NOT NULL DEFAULT '0' COMMENT '提现次数，同一笔DoneCode可能多次提现',
  `createTime` datetime NOT NULL COMMENT '流水创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '流水更新时间',
  `amount` decimal(10,2) NOT NULL COMMENT '退款金额',
  `yurref` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '业务流水号',
  `payaccount` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '付款账号',
  `busmod` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '业务模式',
  `status` int(11) NOT NULL COMMENT '状态(0:无效数据,1:提交银行,2重新支付,3,初始生成)',
  `reasonCode` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '银行返回结果代码',
  `reason` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '银行返回结果',
  `userid` int(11) NOT NULL COMMENT '收款人ID',
  `userType` int(11) NOT NULL COMMENT '收款人类型',
  `bankcardId` int(11) NOT NULL COMMENT '银行卡ID',
  `dbtbbck` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '付款账号开户行编码',
  `sqrnbr` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '批量经办时，用来表示第几笔记录。',
  `reqsts` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '银行状态(AUT:等待审批\n NTE:终审完毕 \nWCF:订单待确认 \nBNK:银行处理中 \nFIN:完成 \nACK:等待确认 APD:待银行确认 \nOPR:数据接收中\n)',
  `rtnflg` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '银行处理状态(S:成功银行支付成功 F:失败银行支付失败 B:退票银行支付被退票 R:否决企业审批否决 D:过期企业过期不审批 C:撤消企业撤销 M:商户撤销订单商务支付 V:拒绝委托贷款被借款方拒绝)',
  `oprals` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '工作流：当前流程操作别名',
  `oprsqn` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '工作流：当前流程待处理操作序列',
  `reqrnbr` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '工作流：流程实例号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;
 
