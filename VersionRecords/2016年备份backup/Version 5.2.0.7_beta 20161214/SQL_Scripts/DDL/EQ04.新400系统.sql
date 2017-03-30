/* Database name `mogoroomdb`, 400新系统相关表修改 */

use mogoroomdb;

ALTER TABLE tele_sungoin_seat DROP COLUMN naviId;

ALTER TABLE `tele_calllog`
  CHANGE `extNumId` `extNumId` INT(11) DEFAULT '-1'  NOT NULL   COMMENT '分机号Id';