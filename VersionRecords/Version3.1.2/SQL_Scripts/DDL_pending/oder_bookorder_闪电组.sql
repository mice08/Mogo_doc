/*  Database name `mogoroomdb` ��Ԥ����������Ƿ��Ѿ������ֶ�*/
use mogoroomdb;

ALTER TABLE oder_bookorder   
  ADD COLUMN `hasRemind` tinyint(1) NULL COMMENT '�Ƿ��Ѿ�����(0:δ���� 1:������)';