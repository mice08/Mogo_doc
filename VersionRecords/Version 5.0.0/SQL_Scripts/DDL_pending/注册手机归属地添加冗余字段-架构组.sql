/*  Database name `mogoroomdb` ע����Դ����ֻ������������ֶ�*/
use mogoroomdb;
  
ALTER TABLE `user_renter` ADD COLUMN regMobileCityValue VARCHAR(30)  DEFAULT 'δ֪' COMMENT '�ֻ�������' ;
ALTER TABLE `user_renter` ADD COLUMN regChannelValue VARCHAR(30)  DEFAULT 'δ֪' COMMENT 'ע������' ;
ALTER TABLE `user_renter` ADD COLUMN regChannelDtlValue VARCHAR(30)  DEFAULT 'δ֪' COMMENT 'ע��������ϸ' ;
