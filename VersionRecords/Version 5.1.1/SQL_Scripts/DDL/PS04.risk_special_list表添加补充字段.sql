
/*risk_special_list����Ӳ����ֶ�*/

use mogoroomdb;

ALTER TABLE `risk_special_list`   
  ADD COLUMN `updateDesc` VARCHAR(50) NULL  COMMENT '�޸�ԭ��' AFTER `updateByType`,
  ADD COLUMN `validCycle` INT(4) NULL  COMMENT '��Ч����,��λ��' AFTER `remark`,
  ADD COLUMN `validTime` DATE NULL  COMMENT '��Чʱ��' AFTER `validCycle`,
  ADD COLUMN `invalidTime` DATE NULL  COMMENT 'ʧЧʱ��' AFTER `validTime`;
