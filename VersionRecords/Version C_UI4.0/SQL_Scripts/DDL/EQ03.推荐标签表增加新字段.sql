/* Database name `mogoroomdb` 推荐标签表增加字段超链接 */

use mogoroomdb;

ALTER TABLE `coms_hottab` ADD hyperlink VARCHAR(256) DEFAULT '' COMMENT '超链接';