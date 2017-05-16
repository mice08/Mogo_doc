/*  Database name `mogoroomdb`  蘑菇基于TP房源改造*/
use mogoroomdb;
ALTER TABLE city ADD adCode VARCHAR(10) NULL COMMENT 'TP城市编码';
ALTER TABLE city_district ADD adCode VARCHAR(10) NULL COMMENT 'TP区域编码';
ALTER TABLE city_business_area ADD tpCode VARCHAR(10) NULL COMMENT 'TP商圈编码';
ALTER TABLE flat_community ADD tpCode VARCHAR(10) NULL COMMENT 'TP小区/大楼编码';
ALTER TABLE flat_room_picture ADD tpImagePath VARCHAR(512) NULL COMMENT '阿里云图片路径';
