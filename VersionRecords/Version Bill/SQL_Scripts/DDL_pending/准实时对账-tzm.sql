/*  Database name `mogoroomdb` ��Ϊ׼ʵʱ��������ֶ�*/
use mogoroomdb;

ALTER TABLE acct.acct_check ADD COLUMN beginTime datetime DEFAULT NULL COMMENT '���˿�ʼʱ��',
ADD COLUMN endTime datetime DEFAULT NULL COMMENT '���˽���ʱ��';
															

ALTER TABLE acct.acct_check ADD COLUMN beginTime datetime DEFAULT NULL COMMENT '���˿�ʼʱ��',
ADD COLUMN endTime datetime DEFAULT NULL COMMENT '���˽���ʱ��';


ALTER TABLE acct.acct_checkbillfunddetail modify COLUMN content varchar(256) DEFAULT NULL COMMENT '������Ϣ';

ALTER TABLE acct.acct_checkbilltradedetail ADD COLUMN billId int(11) DEFAULT NULL COMMENT '�˵�id';

