/*  Database name `mogoroomdb` ���޸�comm_bank��sort�ֶ�����Ϊhot��
֮ǰsort�������򣬺�������ʹ��hot��ʾ���������Ƿ���*/
USE mogoroomdb;
ALTER TABLE comm_bank CHANGE COLUMN  sort hot TINYINT(1) COMMENT"�Ƿ���(1:�� 0:��)"
