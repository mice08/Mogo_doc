use acct;
ALTER TABLE acct.`acct_billdtl` ADD COLUMN `valid` TINYINT NULL DEFAULT 1 COMMENT '状态(0:无效,1:有效)';

use mogoroomdb;
ALTER TABLE mogoroomdb.`comm_picture` ADD COLUMN `valid` TINYINT NULL DEFAULT 1 COMMENT '状态(0:无效,1:有效)';