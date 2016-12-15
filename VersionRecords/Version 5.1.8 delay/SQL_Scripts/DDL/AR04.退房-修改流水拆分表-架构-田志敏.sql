/* Database name `mogoroomdb` ，修改账单流水拆分表字段*/
use mogoroomdb;

ALTER TABLE acct.acct_busibillfeedtl  MODIFY COLUMN  subsId int(11) DEFAULT NULL COMMENT '统一订购id';
