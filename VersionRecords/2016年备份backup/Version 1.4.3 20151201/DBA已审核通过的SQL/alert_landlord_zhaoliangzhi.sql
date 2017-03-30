/*  Database name `mogoroomdb` ，添加房东字段 */
use mogoroomdb;

ALTER TABLE `user_landlord` 
ADD COLUMN `label` TINYINT NOT NULL DEFAULT 0 COMMENT '认证房东 0:未认证 1:蘑菇认证' AFTER `brandName`;
