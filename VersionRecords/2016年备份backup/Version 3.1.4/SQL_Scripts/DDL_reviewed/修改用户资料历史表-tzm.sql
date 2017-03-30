/*  Database name `mogoroomdb` ��Ϊ�û���ʷ���ϱ�����ֶ�*/
use mogoroomdb;

ALTER TABLE `user_landlord_his`   
  ADD COLUMN `signCount` INT(8) DEFAULT 0  NOT NULL COMMENT '�����Ƿ��Ѿ�����ϵͳ',
  ADD COLUMN `landlordType` VARCHAR(10) DEFAULT NULL   COMMENT '��������';
  
  
ALTER TABLE `user_info_his`
	ADD COLUMN `regChannel` INT(1) NOT NULL DEFAULT '3' COMMENT '��������(�����ֵ��comm_dictionaryֵgroupName=channel)' ,
	ADD COLUMN `regChannelDtl` INT(1) NOT NULL DEFAULT '2' COMMENT '������ϸ(�����ֵ��comm_dictionaryֵgroupName=regChannelDtl)' AFTER `regChannel`,
	ADD COLUMN `regMobileCity` VARCHAR(10) NOT NULL DEFAULT '' COMMENT '�ֻ������ر��� ������city.id ����Ҫ�ֻ�ǰ7λ������� ��֤Ψһ' AFTER `regChannelDtl`;
	
	
ALTER TABLE user_info ADD COLUMN incomeLevel tinyint(1) DEFAULT NULL COMMENT '����ˮƽ,groupName=income';
ALTER TABLE user_info_his ADD COLUMN incomeLevel tinyint(1) DEFAULT NULL COMMENT '����ˮƽ,groupName=income';