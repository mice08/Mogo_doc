/*  Database name `mogoroomdb` ，银行卡初始化密文字段的数据*/
use mogoroomdb;

UPDATE user_bankcard SET ciphertext = MD5(CONCAT('renter',
MD5(CONCAT(id,TRIM(IFNULL(realname,'')),TRIM(IFNULL(card_type,'')),TRIM(IFNULL(bankCardNumber,'')),TRIM(IFNULL(cellphonenum,'')))),'withdrawal'));