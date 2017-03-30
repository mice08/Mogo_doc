/* Database name `mogoroomdb` 增加逻辑删除字段 */

use mogoroomdb;

ALTER TABLE coms_context ADD valid TINYINT(1) NOT NULL DEFAULT 1 COMMENT '逻辑删除状态 1:有效 0:无效';

ALTER TABLE coms_pageview ADD valid TINYINT(1) NOT NULL DEFAULT 1 COMMENT '逻辑删除状态 1:有效 0:无效';

ALTER TABLE coms_hothouse ADD valid TINYINT(1) NOT NULL DEFAULT 1 COMMENT '逻辑删除状态 1:有效 0:无效';

ALTER TABLE coms_menutitlerel ADD valid TINYINT(1) NOT NULL DEFAULT 1 COMMENT '逻辑删除状态 1:有效 0:无效';

ALTER TABLE coms_contextcityrel ADD valid TINYINT(1) NOT NULL DEFAULT 1 COMMENT '逻辑删除状态 1:有效 0:无效';

ALTER TABLE coms_contexthelprel ADD valid TINYINT(1) NOT NULL DEFAULT 1 COMMENT '逻辑删除状态 1:有效 0:无效';

ALTER TABLE coms_contexttitlerel ADD valid TINYINT(1) NOT NULL DEFAULT 1 COMMENT '逻辑删除状态 1:有效 0:无效';

ALTER TABLE coms_contextchannelrel ADD valid TINYINT(1) NOT NULL DEFAULT 1 COMMENT '逻辑删除状态 1:有效 0:无效';