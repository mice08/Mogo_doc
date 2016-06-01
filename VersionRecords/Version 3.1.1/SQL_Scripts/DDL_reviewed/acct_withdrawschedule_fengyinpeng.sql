use acct;
Alter table `acct_withdrawschedule`   
  change `dbtbbck` `dbtbbck` varchar(20) CHARSET utf8mb4 COLLATE utf8mb4_general_ci NULL   COMMENT '付款账号开户行';

ALTER TABLE `acct_withdrawschedule`   
  CHANGE `reason` `reason` VARCHAR(512) CHARSET utf8mb4 COLLATE utf8mb4_general_ci NULL   COMMENT '银行返回结果';