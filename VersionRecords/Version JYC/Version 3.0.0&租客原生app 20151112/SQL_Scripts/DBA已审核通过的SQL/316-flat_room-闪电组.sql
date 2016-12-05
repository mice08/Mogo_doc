/*  Database name `mogoroomdb` ，房间表增加一个列表显示价格字段*/
use mogoroomdb;

alter table `flat_room` 
add column `showPrice` decimal(12,2) DEFAULT '0' NULL COMMENT '列表显示价格' after `protoType`,
modify column `area` decimal(12,2) NOT NULL COMMENT '面积';



UPDATE flat_room SET face = '东' WHERE face = '朝东';
UPDATE flat_room SET face = '南' WHERE face = '朝南';
UPDATE flat_room SET face = '西' WHERE face = '朝西';
UPDATE flat_room SET face = '北' WHERE face = '朝北';
UPDATE flat_room SET face = '东南' WHERE face = '朝东南';
UPDATE flat_room SET face = '东北' WHERE face = '朝东北';
UPDATE flat_room SET face = '西南' WHERE face = '朝西南';
UPDATE flat_room SET face = '西北' WHERE face = '朝西北';