/*  Database name `mogoroomdb` ���ʾ���������������������key�ֶ�*/
use mogoroomdb;

ALTER TABLE supp_question_paper_rel ADD COLUMN questionGroup int(11) DEFAULT NULL COMMENT '�������(�ο��ֵ������:questionGroup)';