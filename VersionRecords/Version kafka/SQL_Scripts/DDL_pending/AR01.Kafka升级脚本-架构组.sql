/* Database name `mogoroomdb` ，去除唯一索引*/
use mogoroomdb;
Alter table flat_web_queue drop index `INX_TYPE_KEYID`;