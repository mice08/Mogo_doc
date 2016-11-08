/*loan_landlord_credit������ֶ�*/
USE mogoroomdb ;

ALTER TABLE `loan_landlord_credit` ADD COLUMN `rangeAmount` DECIMAL (12, 2) DEFAULT 0 NULL COMMENT '��ģ��̬���' AFTER `prodTypeCode`,
 ADD COLUMN `roomCount` INT DEFAULT 0 NOT NULL COMMENT '����������' AFTER `rangeAmount`,
 ADD COLUMN `onlineTradingAmount` DECIMAL (12, 2) DEFAULT 0 NOT NULL COMMENT '���Ͻ��׶�̬����ܶ�' AFTER `roomCount`,
 ADD COLUMN `deductionAmount` DECIMAL (12, 2) DEFAULT 0 NOT NULL COMMENT '��ȿۼ��ܶ�' AFTER `onlineTradingAmount`,
 ADD COLUMN `restoreAmount` DECIMAL (12, 2) DEFAULT 0 NOT NULL COMMENT '��Ȼָ��ܶ�' AFTER `deductionAmount`,
 ADD COLUMN `stashedAmount` DECIMAL (12, 2) DEFAULT 0 NULL COMMENT '���������еĶ��ռ��' AFTER `restoreAmount`,
 ADD COLUMN `rentAmount` DECIMAL (12, 2) DEFAULT 0 NULL COMMENT '������ܶ�' AFTER `stashedAmount`;

ALTER TABLE `loan_landlord_credit_his` ADD COLUMN `rentAmount` DECIMAL (12, 2) DEFAULT 0 NULL COMMENT '������ܶ�';

ALTER TABLE `loan_landlord_credentials` DROP COLUMN `applyCityId`;