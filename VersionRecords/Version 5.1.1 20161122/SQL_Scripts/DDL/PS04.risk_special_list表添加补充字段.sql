/*risk_special_list����Ӳ����ֶ�*/

use mogoroomdb;

ALTER TABLE `risk_special_list`   
  ADD COLUMN `updateDesc` VARCHAR(50) NULL  COMMENT '�޸�ԭ��' AFTER `updateByType`,
  CHANGE `valid` `valid` TINYINT(1) DEFAULT 1  NOT NULL  COMMENT '����״̬(0:��Ч 1:��Ч)',
  ADD COLUMN `status` INT(1) NULL  COMMENT '����״̬(0:ʧЧ 1:��Ч)' AFTER `valid`,
  ADD COLUMN `validCycle` INT(4) NULL  COMMENT '��Ч����,��λ��' AFTER `remark`,
  ADD COLUMN `validTime` DATE NULL  COMMENT '��Чʱ��' AFTER `validCycle`,
  ADD COLUMN `expectInvalidTime` DATE NULL  COMMENT 'Ԥ��ʧЧʱ��' AFTER `validTime`,
  ADD COLUMN `InvalidTime` DATE NULL  COMMENT 'ʵ��ʧЧʱ��' AFTER `expectInvalidTime`;