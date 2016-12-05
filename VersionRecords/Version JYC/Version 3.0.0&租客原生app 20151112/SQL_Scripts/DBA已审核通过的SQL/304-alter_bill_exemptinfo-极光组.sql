/*  Database name `mogoroomdb` ，bill_exemptinfo表修改索引*/
use mogoroomdb;

alter table `bill_exemptinfo` ADD UNIQUE INDEX1 (`billId`, `createBy`, `createByType`);

