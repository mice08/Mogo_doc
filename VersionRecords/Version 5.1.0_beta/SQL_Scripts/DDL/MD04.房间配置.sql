/* Database name `mogoroomdb`， 新版房源录入添加房间配置 */

use mogoroomdb;

ALTER TABLE flat_room_config ADD inductionCookerNum tinyint(1) NOT NULL DEFAULT '0' COMMENT '电磁炉数量';

ALTER TABLE flat_room_config ADD sofaNum tinyint(1) NOT NULL DEFAULT '0' COMMENT '沙发数量';

ALTER TABLE flat_room_config ADD gasStoveNum tinyint(1) NOT NULL DEFAULT '0' COMMENT '燃气灶数量';

ALTER TABLE flat_room_config ADD rangeHoodNum tinyint(1) NOT NULL DEFAULT '0' COMMENT '抽油烟机数量';
