use mogoroomdb;
ALTER TABLE `comm_suggestion`   
  CHANGE `proposer` `proposer` INT(11) NULL  COMMENT '�����id',
  ADD COLUMN `proposerName` VARCHAR(50) NULL  COMMENT '���������' AFTER `proposer`,
  ADD COLUMN `proposerPhone` VARCHAR(20) NULL  COMMENT '����ߵ绰' AFTER `proposerName`;