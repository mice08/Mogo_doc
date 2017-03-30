
use mogoroomdb;

/* 用户配置中心历史表添加配置中心主表id */
ALTER TABLE `user_config_his`
ADD COLUMN `tid`  int(11) NULL COMMENT '用户配置中心id' AFTER `id`;

/* 房东信息历史表添加房东信息表主表id */
ALTER TABLE `user_landlord_info_his`
ADD COLUMN `userLandlordInfoId`  int(11) NULL COMMENT '房东信息表id' AFTER `tid`;