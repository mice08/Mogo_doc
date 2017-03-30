/*  Database name `mogoroomdb` ，用户银行表添加字段*/
USE mogoroomdb;

ALTER TABLE `user_bankcard`   
  ADD COLUMN `bankId` INT(11) NULL COMMENT '银行ID' AFTER `IDNumber`;


/* 初始化user_bankcard.bankid */
UPDATE user_bankcard t1,comm_bank t2
SET t1.bankId=t2.id
WHERE (t1.bank_code=t2.enname OR t1.bankname=t2.name OR t1.bankname=t2.shortname) AND t1.bank_code NOT IN ('CCBACC','RCC','UPOP'); 