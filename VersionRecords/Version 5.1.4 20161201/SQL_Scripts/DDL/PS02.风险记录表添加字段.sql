
/*���ռ�¼������ֶ�*/
use mogoroomdb;

ALTER TABLE `risk_landlord_level`   
  ADD COLUMN `ruleName` VARCHAR(25) NULL  COMMENT '��������' AFTER `phase`;