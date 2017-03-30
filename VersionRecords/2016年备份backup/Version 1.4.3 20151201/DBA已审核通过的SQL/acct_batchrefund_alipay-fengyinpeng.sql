USE acct;

DROP TABLE IF  EXISTS `acct_batchrefund_alipay`;

CREATE TABLE IF NOT EXISTS `acct_batchrefund_alipay` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `notify_time` DATETIME NOT NULL COMMENT '通知时间',
  `notify_type` VARCHAR(45) NOT NULL COMMENT '通知的类型',
  `notify_id` VARCHAR(45) NOT NULL COMMENT '通知校验 ID',
  `sign_type` VARCHAR(10) NOT NULL COMMENT 'DSA、RSA、MD5 三个值可选，必须大写',
  `sign` VARCHAR(512) NOT NULL COMMENT '签名',
  `batch_no` VARCHAR(45) NOT NULL COMMENT '退款批次号',
  `success_num` VARCHAR(10) NOT NULL COMMENT '退款成功总数',
  `result_details` VARCHAR(1024) NOT NULL COMMENT '退款结果明细',
  PRIMARY KEY (`id`)) ENGINE = INNODB DEFAULT CHARACTER SET = utf8 COMMENT = '支付宝退款记录'