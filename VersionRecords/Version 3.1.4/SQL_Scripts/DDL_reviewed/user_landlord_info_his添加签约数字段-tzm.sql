/*  Database name `mogoroomdb` ��Ϊ����������˺����ͼ����ô����ֶ�*/
use mogoroomdb;

ALTER TABLE `user_landlord_info_his`   
  ADD COLUMN `signCount` INT(8) DEFAULT 0  NOT NULL COMMENT 'ǩԼ�����������Ƿ��Ѿ�����ϵͳ',
  ADD COLUMN `landlordType` VARCHAR(10) DEFAULT NULL   COMMENT '��������';
