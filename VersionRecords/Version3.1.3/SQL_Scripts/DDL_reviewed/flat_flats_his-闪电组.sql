/* Database name `mogoroomdb` , ��Ԣ��ʷ������ֶΣ��Ƿ����Զ����� */
use mogoroomdb;
ALTER TABLE flat_flats_his ADD COLUMN isAutoUpdate TINYINT(1) DEFAULT '0' COMMENT '�Ƿ����Զ�����(0:�� 1:��)';