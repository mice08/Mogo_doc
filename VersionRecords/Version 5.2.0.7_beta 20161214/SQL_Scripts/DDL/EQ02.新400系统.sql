/* Database name `mogoroomdb`, 400新系统相关表修改 */

use mogoroomdb;

ALTER TABLE `tele_ext_usr_rel` ADD COLUMN `isDefault` TINYINT(1) NOT NULL DEFAULT '0' COMMENT '是默认分机(0:不是默认, 1:是默认)' AFTER `userType`;
ALTER TABLE `tele_ext_usr_rel_his` ADD COLUMN `isDefault` TINYINT(1) NOT NULL DEFAULT '0' COMMENT '是默认分机(0:不是默认, 1:是默认)' AFTER `userType`;
