/*  Database name `mogoroomdb`  �ֻ��������ֶΣ���Դ��&�绰��&�ͻ��� */
use mogoroomdb;

ALTER TABLE tele_extnum
  ADD COLUMN `roomNum` INT(11) DEFAULT 0  NOT NULL   COMMENT '��Դ��' AFTER `returnTime`,
  ADD COLUMN `teleNum` INT(11) DEFAULT 0  NOT NULL   COMMENT '�绰��' AFTER `roomNum`,
  ADD COLUMN `custNum` INT(11) DEFAULT 0  NOT NULL   COMMENT '�ͻ���' AFTER `teleNum`;

