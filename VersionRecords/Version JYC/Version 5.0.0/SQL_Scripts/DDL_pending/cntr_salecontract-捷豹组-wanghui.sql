/*  Database name `mogoroomdb` ��billconfig add no nullԼ�����Ѽ���������ݿ⣬Ŀǰ��δ����null����*/
use mogoroomdb;

ALTER TABLE `cntr_salecontract`
MODIFY COLUMN `billConfig`  varchar(4096) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '��ͬ�˵����ã�json�ַ���' AFTER `residentId`;

 