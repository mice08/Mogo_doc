/*  Database name `mogoroomdb`  ��ؼ�¼�� */
use mogoroomdb;

ALTER TABLE `risk_record`   
  ADD COLUMN `hitSubject` VARCHAR(32) NULL COMMENT '��������',
  ADD COLUMN `renterId` INT(11) NULL COMMENT '���id' AFTER ,
  ADD COLUMN `remark` VARCHAR(256) NULL COMMENT '����������ע';
