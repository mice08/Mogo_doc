/*** ���������Ѿ�ִ�й�������ִ�У���Ҫ�ǲ��Ի���ִ�С� ����΢��ÿ���Զ�����������ת,����ҵ�������ӣ������г���̫�̣����¶���ʧ�ܡ���ҪSQL�޸�***/
USE mogoroomdb;

ALTER TABLE  `bill_checkbill_weixin` MODIFY COLUMN `bizOrderNum`  VARCHAR(64)  NULL   COMMENT '�̻�������';
ALTER TABLE  `bill_checkbill_zhifubao` MODIFY COLUMN `orderNum`  VARCHAR(64)  NULL   COMMENT '�̻�������';
ALTER TABLE  `bill_checkbill_base` MODIFY COLUMN `bizOrderNum`  VARCHAR(64)  NULL   COMMENT '�̻�������';