/* 
Database name `acct`
见证系统流水表
*/
use acct;


/*
1、预估表容量:800-1000条/天
2、每次读取量:在1-1000条左右
3、主要查询根据id 或者根据时间段；
*/
CREATE TABLE `acct_mybank_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `doneCode` varchar(50) DEFAULT NULL COMMENT '待同步的acct.acct_busirec.doneCode',
  `acctId` int(11) DEFAULT NULL COMMENT '支付方acctId',
  `toAcctId` int(11) DEFAULT NULL COMMENT '收款方acctId',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `mybankBusiType` int(11) DEFAULT NULL COMMENT '业务类型代码',
  `mybankTradeNo` varchar(50) DEFAULT NULL COMMENT '网商流水号',
  `status` varchar(20) DEFAULT NULL COMMENT '状态',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createByType` tinyint(3) DEFAULT NULL COMMENT '创建人类型',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `updateByType` int(11) DEFAULT NULL COMMENT '更新人类型',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `extraField1` varchar(50) DEFAULT NULL COMMENT '预留字段1',
  `fundChannel` tinyint(4) DEFAULT NULL COMMENT '支付渠道',
  `accountType` int(11) DEFAULT NULL COMMENT '账户类型',
  `toAccountType` int(11) DEFAULT NULL COMMENT '收款账户类型',
  `origDoneCode` varchar(50) DEFAULT NULL COMMENT '退款对应的原doneCode',
  PRIMARY KEY (`id`),
  KEY `idx_createTime` (`createTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='网商同步流水表';


/*
1、预估表容量:800-1000条/天
2、每次读取量:在1-1000条左右
3、主要查询根据id 或者根据时间段；
*/
CREATE TABLE `acct_paylog_mybank` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `notify_id` varchar(50) DEFAULT NULL COMMENT '通知ID',
  `notify_type` varchar(50) DEFAULT NULL COMMENT '通知时间',
  `_input_charset` varchar(50) DEFAULT NULL COMMENT '参数字符集编码',
  `sign` varchar(512) DEFAULT NULL COMMENT '签名',
  `sign_type` varchar(50) DEFAULT NULL COMMENT '签名方式',
  `version` varchar(10) DEFAULT NULL COMMENT '版本号',
  `outer_trade_no` varchar(32) DEFAULT NULL COMMENT '商户网站唯一订单号',
  `inner_trade_no` varchar(64) DEFAULT NULL COMMENT '支付系统交易号',
  `trade_status` varchar(20) DEFAULT NULL COMMENT '交易状态',
  `trade_amount` varchar(10) DEFAULT NULL COMMENT '交易金额',
  `trade_info` varchar(200) DEFAULT NULL COMMENT '交易详情',
  `gmt_create` varchar(20) DEFAULT NULL COMMENT '交易创建时间',
  `gmt_payment` varchar(20) DEFAULT NULL COMMENT '交易支付时间',
  `gmt_close` varchar(20) DEFAULT NULL COMMENT '交易关闭时间',
  `payInfo` varchar(1000) DEFAULT NULL COMMENT '支付信息',
  `productCode` varchar(10) DEFAULT NULL COMMENT '产品码',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `status` varchar(50) DEFAULT NULL COMMENT '支付状态',
  `orig_outer_trade_no` varchar(32) DEFAULT NULL COMMENT '原交易商户网站',
  `refund_amount` varchar(32) DEFAULT NULL COMMENT '退款金额',
  `refund_status` varchar(10) DEFAULT NULL COMMENT '退款状态',
  `gmt_refund` varchar(32) DEFAULT NULL COMMENT '交易退款时间',
  `withdrawal_amount` varchar(10) DEFAULT NULL COMMENT '退款金额',
  `withdrawal_status` varchar(10) DEFAULT NULL COMMENT '退款状态',
  `uid` varchar(20) DEFAULT NULL COMMENT '用户标识',
  `return_code` varchar(20) DEFAULT NULL COMMENT '返回码',
  `fail_reason` varchar(100) DEFAULT NULL COMMENT '失败原因',
  `gmt_withdrawal` varchar(20) DEFAULT NULL COMMENT '提现时间',
  `transfer_amount` varchar(10) DEFAULT NULL COMMENT '转账金额',
  `transfer_status` varchar(20) DEFAULT NULL COMMENT '转账状态',
  `gmt_transfer` varchar(20) DEFAULT NULL COMMENT '转账时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='网商回调流水表';


/*
1、主要查询根据acctId,一次查一条；
2. 灰度阶段使用；
*/
CREATE TABLE `acct_syncuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `acctId` int(11) DEFAULT NULL COMMENT '测试acctId',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createByType` tinyint(4) DEFAULT NULL COMMENT '创建人类型',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `updateByType` tinyint(4) DEFAULT NULL COMMENT '更新人类型',
  `updateTime` datetime DEFAULT NULL COMMENT '更新人时间',
  PRIMARY KEY (`id`),
  KEY `idx_acctid` (`acctId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='网商白名单用户表';