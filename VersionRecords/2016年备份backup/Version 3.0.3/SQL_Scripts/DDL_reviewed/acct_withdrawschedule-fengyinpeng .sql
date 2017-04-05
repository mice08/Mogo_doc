USE `acct`;
 
DROP TABLE IF EXISTS `acct_withdrawschedule`;
 
CREATE TABLE `acct_withdrawschedule` (
   `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
   `doneCode` INT(11) NOT NULL COMMENT '账务流水号',
   `oprIndex` INT(11) NOT NULL DEFAULT '0' COMMENT '提现次数，同一笔DoneCode可能多次提现',
   `createTime` DATETIME NOT NULL COMMENT '流水创建时间',
   `updateTime` DATETIME DEFAULT NULL COMMENT '流水更新时间',
   `amount` DECIMAL(10,2) NOT NULL COMMENT '退款金额',
   `status` INT(11) NOT NULL COMMENT '状态(0:无效数据 1:初始生成 2:提交银行 3:重新支付)',
   `userId` INT(11) NOT NULL COMMENT '收款人ID',
   `userType` INT(11) NOT NULL COMMENT '收款人类型',
   `bankcardId` INT(11) NOT NULL COMMENT '银行卡ID',
   `bankcardNumber` VARCHAR(20) NOT NULL COMMENT '银行卡号码',
   `payaccount` VARCHAR(45) DEFAULT NULL COMMENT '付款账号',
   `busmod` VARCHAR(10) DEFAULT NULL COMMENT '业务模式(枚举待补充)',
   `yurref` VARCHAR(45) DEFAULT NULL COMMENT '招行流水号',
   `dbtbbck` VARCHAR(10) DEFAULT NULL COMMENT '付款账号开户行编码',
   `sqrnbr` VARCHAR(45) DEFAULT NULL COMMENT '批量经办时，用来表示第几笔记录。',
   `reqsts` VARCHAR(20) DEFAULT NULL COMMENT '银行状态(AUT:等待审批 NTE:终审完毕 WCF:订单待确认 BNK:银行处理中 FIN:完成 ACK:等待确认 APD:待银行确认 OPR:数据接收中)',
   `rtnflg` VARCHAR(20) DEFAULT NULL COMMENT '银行处理状态(S:成功银行支付成功 F:失败银行支付失败 B:退票银行支付被退票 R:否决企业审批否决 D:过期企业过期不审批 C:撤消企业撤销 M:商户撤销订单商务支付 V:拒绝委托贷款被借款方拒绝)',
   `oprals` VARCHAR(45) DEFAULT NULL COMMENT '工作流：当前流程操作别名',
   `oprsqn` VARCHAR(45) DEFAULT NULL COMMENT '工作流：当前流程待处理操作序列',
   `reqrnbr` VARCHAR(45) DEFAULT NULL COMMENT '工作流：流程实例号',
   `reasonCode` VARCHAR(20) DEFAULT NULL COMMENT '银行返回结果代码',
   `reason` VARCHAR(45) DEFAULT NULL COMMENT '银行返回结果',
   PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='提现计划表';