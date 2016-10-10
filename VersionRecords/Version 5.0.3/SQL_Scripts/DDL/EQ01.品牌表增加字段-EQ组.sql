/* Database name `mogoroomdb` ，品牌表增加字段*/
use mogoroomdb;

<<<<<<< HEAD
ALTER TABLE `brand` ADD offlineTime TIMESTAMP NULL COMMENT '下线时间' AFTER approvalComments;
ALTER TABLE `brand` ADD onlineTime TIMESTAMP NULL COMMENT '上线时间' AFTER approvalComments;
=======
ALTER TABLE `brand` ADD offlineTime TIMESTAMP NULL COMMENT '下线时间' AFTER approvalTime;
ALTER TABLE `brand` ADD onlineTime TIMESTAMP NULL COMMENT '上线时间' AFTER approvalTime;
>>>>>>> 141ffdafc0aee79a8f81c51cbcce567d5afa5ca8
