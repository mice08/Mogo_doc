use mogoroomdb;
ALTER TABLE `comm_suggestion`   
  CHANGE `proposer` `proposer` INT(11) NULL  COMMENT '提出者id',
  ADD COLUMN `proposerName` VARCHAR(50) NULL  COMMENT '提出者姓名' AFTER `proposer`,
  ADD COLUMN `proposerPhone` VARCHAR(20) NULL  COMMENT '提出者电话' AFTER `proposerName`;