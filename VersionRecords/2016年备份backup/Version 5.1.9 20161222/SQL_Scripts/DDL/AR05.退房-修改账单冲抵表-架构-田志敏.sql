/* Database name `mogoroomdb` ，修改账单冲抵表索引*/
use mogoroomdb;

CREATE INDEX idx_bill_rel_subsid ON acct.`acct_bill_rel` (subsId);
