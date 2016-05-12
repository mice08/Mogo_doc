/* 小区表增加一个字段，用来保存小区名称对应的拼音 */
use mogoroomdb;

-- 增加一个拼音字段
alter table `flat_community` 
   add column `namePinyin` varchar(100) NULL COMMENT '小区名拼音' after `name`;