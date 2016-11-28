-- 添加房型价格
USE mogoroomdb;

ALTER TABLE `flat_flats_prototype`
ADD COLUMN `salePrice`  decimal(12,2) DEFAULT NULL COMMENT '房型价格';

