use mogoroomdb;

ALTER TABLE `user_landlord`   
  CHANGE `acctType` `acctType` TINYINT(3) DEFAULT 0  NULL   COMMENT '�˺�����(0:���� 1:��˾)';

UPDATE 
`user_landlord`
SET acctType = 0 
WHERE acctType IS NULL  ;
