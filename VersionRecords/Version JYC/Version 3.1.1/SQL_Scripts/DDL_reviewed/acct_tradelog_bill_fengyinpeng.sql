 
USE `acct`;

 
DROP TABLE IF EXISTS `acct_tradelog_bill`;

CREATE TABLE `acct_tradelog_bill` (
  `tradlogid` int(11) NOT NULL COMMENT '支付行为ID',
  `billid` int(11) NOT NULL COMMENT '账单ID',
  PRIMARY KEY (`tradlogid`,`billid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT = '支付行为账单映射表';
 

INSERT INTO acct.`acct_tradelog_bill`  SELECT id,billId FROM acct.acct_tradelog  WHERE billid IS NOT NULL;