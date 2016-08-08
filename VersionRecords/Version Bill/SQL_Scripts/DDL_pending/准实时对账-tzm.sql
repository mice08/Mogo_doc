/*  Database name `mogoroomdb` ，为准实时对账添加字段*/
use mogoroomdb;

ALTER TABLE acct.acct_check ADD COLUMN beginTime datetime DEFAULT NULL COMMENT '对账开始时间',
ADD COLUMN endTime datetime DEFAULT NULL COMMENT '对账结束时间';
															

ALTER TABLE acct.acct_checkbillfunddetail modify COLUMN content varchar(256) DEFAULT NULL COMMENT '描述信息';

ALTER TABLE acct.acct_checkbilltradedetail ADD COLUMN billId int(11) DEFAULT NULL COMMENT '账单id';

