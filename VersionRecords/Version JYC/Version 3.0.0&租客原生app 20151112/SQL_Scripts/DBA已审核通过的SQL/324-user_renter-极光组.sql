/* Database name `mogoroomdb` ，租客表添加是否认证字段 */
use mogoroomdb;

ALTER TABLE `user_renter`   
ADD COLUMN `isVerified` INT(2) DEFAULT 1  NOT NULL  COMMENT '是否通过了身份认证(0:否 1:是)';
