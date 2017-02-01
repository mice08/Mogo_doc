/*  Database name `mogoroomdb`  分机表增加字段：房源量&电话量&客户量 */
use mogoroomdb;

ALTER TABLE tele_extnum
  ADD COLUMN `roomNum` INT(11) DEFAULT 0  NOT NULL   COMMENT '房源量' AFTER `returnTime`,
  ADD COLUMN `teleNum` INT(11) DEFAULT 0  NOT NULL   COMMENT '电话量' AFTER `roomNum`,
  ADD COLUMN `custNum` INT(11) DEFAULT 0  NOT NULL   COMMENT '客户量' AFTER `teleNum`;

