use mogoroomdb;

/*增加地铁排序字段 */
ALTER TABLE `city_subway` ADD COLUMN `sort` int(11) NOT NULL default '0' COMMENT '地铁排序字段';
