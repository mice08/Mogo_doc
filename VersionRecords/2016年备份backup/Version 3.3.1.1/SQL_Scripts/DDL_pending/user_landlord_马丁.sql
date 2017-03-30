use mogoroomdb;

ALTER TABLE `user_landlord`   
  CHANGE `acctType` `acctType` TINYINT(3) DEFAULT 0  NULL   COMMENT '账号类型(0:个人 1:公司)';

UPDATE 
`user_landlord`
SET acctType = 0 
WHERE acctType IS NULL  ;
