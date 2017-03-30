USE acct;

DROP TABLE IF EXISTS `acct`.`acct_thridrefund`;

CREATE TABLE  `acct`.`acct_thridrefund` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `billId` INT(11) NULL COMMENT '账单编号',
  `orderNum` VARCHAR(45) NULL COMMENT '业务订单号',
  `amount` DECIMAL(10,2) NOT NULL COMMENT '退款金额',
  `createTime` DATETIME NOT NULL COMMENT '创建时间',
  `refundChannel` INT(11) NOT NULL COMMENT '退款渠道',
  `status` INT(11) NOT NULL COMMENT '状态 1有效，0无效',
  `refundStatus` INT NOT NULL COMMENT '0:未退款 1：退款完成',
  PRIMARY KEY (`id`))
ENGINE = INNODB
DEFAULT CHARACTER SET = utf8
COMMENT = '第三方扣款计划表';