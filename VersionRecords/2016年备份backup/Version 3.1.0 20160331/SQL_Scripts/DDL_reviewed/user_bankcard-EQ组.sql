/*  Database name `mogoroomdb` ，银行卡添加密文字段*/
use mogoroomdb;

ALTER TABLE `user_bankcard`   
  ADD COLUMN `ciphertext` VARCHAR(50) NULL   COMMENT '密文' AFTER `employ`;