/* Database name `mogoroomdb`, 58对接账号表增加城市ID字段 */
use mogoroomdb;

ALTER TABLE flat_joint_58account ADD COLUMN cityId int(11) NOT NULL DEFAULT 289 COMMENT '对接城市ID' AFTER id;