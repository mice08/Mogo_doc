/* Database name `mogoroomdb`， 房源推荐标签表中添加该标签下允许展示的房源数量 */

use mogoroomdb;

ALTER TABLE coms_hottab ADD COLUMN showNum INT NOT NULL DEFAULT 0 COMMENT '展示内容数量，0代表不受限';

ALTER TABLE coms_hottab ADD COLUMN cssStyle VARCHAR(512) DEFAULT '' COMMENT '展示内容样式';

ALTER TABLE coms_hottab ADD COLUMN contextId INT DEFAULT 0 COMMENT '标签中内容的ID';

ALTER TABLE coms_context ADD COLUMN showNav TINYINT DEFAULT 1 COMMENT '是否显示导航，默认显示';