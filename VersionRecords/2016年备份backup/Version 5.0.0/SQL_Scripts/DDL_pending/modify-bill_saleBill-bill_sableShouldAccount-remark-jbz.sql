/*  Database name `mogoroomdb` ��Ϊ�˵��޸�remark����*/
use mogoroomdb;

ALTER TABLE bill_saleshouldaccount MODIFY COLUMN remark VARCHAR(256) COLLATE utf8_bin DEFAULT NULL COMMENT '��ע';
ALTER TABLE bill_salebill MODIFY COLUMN remark VARCHAR(256) COLLATE utf8_bin DEFAULT NULL COMMENT '��ע';