use mogoroomdb;
/*添加默认值，添加字段*/
ALTER TABLE `repo_logintotal_daily`   
  CHANGE `PCLoginCount` `PCLoginCount` INT(11) DEFAULT 0  NULL  COMMENT 'pc每日登录统计',
  CHANGE `APPLoginCount` `APPLoginCount` INT(11) DEFAULT 0  NULL  COMMENT 'app每日登录统计',
  ADD COLUMN `newAPPLoginCount` INT(11) DEFAULT 0  NULL  COMMENT '新房东app登录统计' AFTER `APPLoginCount`,
  ADD COLUMN `oldAPPLoginCount` INT(11) DEFAULT 0  NULL  COMMENT '旧房东app登录统计' AFTER `newAPPLoginCount`;

/*
新建表：数据中心 租客登录详情
1. 预计每日新增20000，每月600000
2. 主要查询sql: select count(1),cityId,accessDate,channel from dc_renter_loginlog_daily group by cityId,accessDate,channel
3. 索引: accessDate
*/
use dc;
CREATE TABLE `dc`.`dc_renter_loginlog_daily`(  
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cityId` INT(11) COMMENT '城市id',
  `userId` VARCHAR(36) COMMENT '针对单个用户生成的唯一id(growingio记录的userid，例如，web网站生成一个有效期三年的cookie值，mobile则为机器唯一标识码)',
  `channel` INT(11) COMMENT '终端类型(枚举ChannelEnum)',
  `accessDate` DATE COMMENT '访问时间',
  `ip` VARCHAR(15) COMMENT 'ip地址',
  `renterId` INT(11) COMMENT '租客id',
  PRIMARY KEY (`id`),
  INDEX `accessDate` (`accessDate`)
)
COMMENT='C端用户访问详情';

/*
新建表：数据中心 租客登录详情
1. 预计每日新增50，每月1500
2. 主要查询sql: select recordDate,cityId,channel,uv from dc_renter_uv_daily where recordDate = ?
3. 索引: recordDate
*/
use dc;
CREATE TABLE `dc`.`dc_renter_uv_daily`(  
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `recordDate` DATE COMMENT '数据时间',
  `cityId` INT(11) COMMENT '城市id',
  `channel` INT(11) COMMENT '渠道(枚举ChannelEnum)',
  `uv` INT(11) COMMENT 'uv数量',
  PRIMARY KEY (`id`),
  INDEX `recordDate` (`recordDate`)
)
COMMENT='C端用户uv统计';