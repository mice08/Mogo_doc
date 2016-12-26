use acct;
ALTER TABLE acct.`acct_billdtl` ADD COLUMN `valid` TINYINT NULL DEFAULT 1 COMMENT '�Ƿ��߼�ɾ��(0:��Ч,1:��Ч)';

use mogoroomdb;
ALTER TABLE mogoroomdb.`comm_picture` ADD COLUMN `valid` TINYINT NULL DEFAULT 1 COMMENT '�Ƿ��߼�ɾ��(0:��Ч,1:��Ч)';