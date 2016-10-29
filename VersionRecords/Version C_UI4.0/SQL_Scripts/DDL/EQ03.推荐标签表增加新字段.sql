/* Database name `mogoroomdb` 推荐标签表增加字段超链、区域ID */

use mogoroomdb;

ALTER TABLE `coms_hottab` ADD linkUrl VARCHAR(64) DEFAULT '' COMMENT '更多链接';

ALTER TABLE `coms_hottab` ADD districtId INT DEFAULT 0 COMMENT '区域ID';