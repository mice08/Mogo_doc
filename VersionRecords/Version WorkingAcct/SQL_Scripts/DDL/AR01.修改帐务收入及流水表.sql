/*添加收入表及流水表工作账字段*/
USE mogoroomdb;

ALTER TABLE acct.`acct_busirec` ADD COLUMN workingAcct TINYINT(3) DEFAULT NULL COMMENT '工作账标识(0:非工作账收入 1:工作账收入)';

ALTER TABLE acct.`acct_busibillfeedtl` ADD COLUMN workingAcct TINYINT(3) DEFAULT NULL COMMENT '工作账标识(0:非工作账收入 1:工作账收入)';

