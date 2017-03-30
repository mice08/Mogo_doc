/*  Database name `mogoroomdb` ，房间属性表增加字段*/
use mogoroomdb;

alter table `flat_room_config` 
add column `waterheaterNum` tinyint(1) DEFAULT '0' NOT NULL COMMENT '热水器数量',
add column `washerNum` tinyint(1) DEFAULT '0' NOT NULL COMMENT '洗衣机数量',
add column `fridgeNum` tinyint(1) DEFAULT '0' NOT NULL COMMENT '冰箱数量',
add column `heatingNum` tinyint(1) DEFAULT '0' NOT NULL COMMENT '暖气数量',
add column `microwaveNum` tinyint(1) DEFAULT '0' NOT NULL COMMENT '微波炉数量',
add column `bedNum` tinyint(1) DEFAULT '0' NOT NULL COMMENT '床数量',
add column `wardrobeNum` tinyint(1) DEFAULT '0' NOT NULL COMMENT '衣柜数量',
add column `deskNum` tinyint(1) DEFAULT '0' NOT NULL COMMENT '书桌数量';

