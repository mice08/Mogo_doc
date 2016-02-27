/* Database name `mogoroomdb` , 原生App开发签约页面新字段 */
use mogoroomdb;

ALTER TABLE `user_renter` ADD COLUMN `companyName`  VARCHAR(200)  NULL COMMENT '单位名称';