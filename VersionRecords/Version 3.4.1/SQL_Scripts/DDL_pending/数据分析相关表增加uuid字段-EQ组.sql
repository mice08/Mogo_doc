/* Database name `mogoroomdb` , 数据分析相关表增加uuid字段 */
use  mogoroomdb;

ALTER TABLE user_interest_tag ADD COLUMN device_uuid VARCHAR(50) DEFAULT NULL COMMENT '终端设备唯一标识' AFTER `regId`;

/* Database name 'mogo_da'  , 数据分析相关表增加uuid字段*/
use mogo_da;

ALTER TABLE user_interest_tag ADD COLUMN device_uuid VARCHAR(50) DEFAULT NULL COMMENT '终端设备唯一标识' AFTER `regId`;

ALTER TABLE user_behavior_tag ADD COLUMN device_uuid VARCHAR(50) DEFAULT NULL COMMENT '终端设备唯一标识' AFTER `regId`;
