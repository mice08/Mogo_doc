/* 小区表增加一个字段，用来保存小区名称对应的拼音 */
use mogoroomdb;

-- 增加一个拼音字段
alter table `flat_community` 
   add column `namePinyin` varchar(100) CHARSET utf8 COLLATE utf8_general_ci NULL COMMENT '小区名拼音' after `name`,
   change `id` `id` int(11) NOT NULL AUTO_INCREMENT comment 'id', 
   change `name` `name` varchar(30) character set utf8 collate utf8_general_ci NULL  comment '小区名';