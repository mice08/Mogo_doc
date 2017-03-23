/*修改借款人字段*/

use mogoroomdb;


ALTER TABLE `loan_borrower_info`
MODIFY COLUMN `mobile`  varchar(20)  NOT NULL COMMENT '银行预留手机号' AFTER `addressDetails`,
ADD COLUMN `userId`  int(11)  COMMENT '借款人Id' AFTER `userName`,
ADD COLUMN `userMoblie`  varchar(20)  COMMENT '借款人手机号' AFTER `userId`;