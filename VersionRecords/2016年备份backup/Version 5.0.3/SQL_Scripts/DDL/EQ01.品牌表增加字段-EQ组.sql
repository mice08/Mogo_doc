/* Database name `mogoroomdb` ，品牌表增加字段*/
use mogoroomdb;

ALTER TABLE `brand` ADD offlineTime TIMESTAMP NULL COMMENT '下线时间' AFTER approvalTime;
ALTER TABLE `brand` ADD onlineTime TIMESTAMP NULL COMMENT '上线时间' AFTER approvalTime;
