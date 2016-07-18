/* Database name `mogoroomdb` , 用户行为记录表和user_renter表增加device_uuid字段 */
use  mogoroomdb;

ALTER TABLE user_behavior_record ADD COLUMN device_uuid VARCHAR(50) DEFAULT NULL COMMENT '终端设备唯一标识';

ALTER TABLE user_renter ADD COLUMN device_uuid VARCHAR(50) DEFAULT NULL COMMENT '终端设备唯一标识';

ALTER TABLE user_interest_tag ADD COLUMN device_uuid VARCHAR(50) DEFAULT NULL COMMENT '终端设备唯一标识' AFTER `regId`;

/* mogo_da库 */
use mogo_da;

ALTER TABLE user_interest_tag ADD COLUMN device_uuid VARCHAR(50) DEFAULT NULL COMMENT '终端设备唯一标识' AFTER `regId`;

ALTER TABLE user_behavior_tag ADD COLUMN device_uuid VARCHAR(50) DEFAULT NULL COMMENT '终端设备唯一标识' AFTER `regId`;
