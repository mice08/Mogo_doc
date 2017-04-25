/* Database name 'mogoroomdb' 签约单表updateTime字段添加默认值*/
use mogoroomdb;
ALTER TABLE `oder_signedorder` CHANGE `updateTime` `updateTime` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NULL COMMENT '更新时间';