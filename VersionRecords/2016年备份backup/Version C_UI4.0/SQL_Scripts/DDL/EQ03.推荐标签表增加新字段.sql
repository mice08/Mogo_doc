/* Database name `mogoroomdb` 推荐标签表增加字段超链接 */

use mogoroomdb;

ALTER TABLE `coms_hottab` ADD hyperlink VARCHAR(256) DEFAULT '' COMMENT '超链接';

ALTER TABLE `coms_hothouse` ADD sort INT DEFAULT 0 COMMENT '推荐房源排序';