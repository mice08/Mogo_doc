/*  Database name `mogoroomdb` ע����Դ����ֻ������������ֶ�*/
use mogoroomdb;
  
ALTER TABLE `user_renter` ADD COLUMN `regMobileCityValue` VARCHAR(30)  DEFAULT 'δ֪' COMMENT '�ֻ�������' AFTER `regMobileCity`;
