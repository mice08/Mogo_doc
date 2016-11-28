/* Database name `mogoroomdb` ，修改账单冲抵表字段*/
use mogoroomdb;

ALTER TABLE acct.`acct_bill_rel`  MODIFY COLUMN `checkoutBillId` INT(11) DEFAULT NULL COMMENT '退房账单id';
