/*  Database name `mogoroomdb` ������ǩԼ�ķ�������*/
use mogoroomdb;

ALTER TABLE `user_landlord`   
  ADD COLUMN `signCount` INT(8) DEFAULT 0  NOT NULL COMMENT '�����Ƿ��Ѿ�����ϵͳ';

ALTER TABLE `user_landlord_info`   
  ADD COLUMN `signCount` INT(8) DEFAULT 0  NOT NULL COMMENT '�����Ƿ��Ѿ�����ϵͳ';