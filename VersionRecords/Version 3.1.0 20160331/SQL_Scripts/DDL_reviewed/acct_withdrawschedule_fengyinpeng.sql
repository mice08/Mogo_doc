use acct;
ALTER TABLE  acct.`acct_withdrawschedule` ADD COLUMN signs VARCHAR(128) NOT NULL COMMENT '���ּƻ�ǩ��';

ALTER TABLE `acct`.`acct_withdrawschedule`  ADD  UNIQUE INDEX `YURREF_IDX` (`yurref`);