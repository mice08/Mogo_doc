/*  Database name `mogoroomdb`  ��ؼǹ���� */
use mogoroomdb;

ALTER TABLE `risk_rule`   
  ADD COLUMN `isSysprocess` TINYINT(1) DEFAULT 0 NULL COMMENT '�Ƿ�ϵͳ����(0:���ǣ�1:��)';
