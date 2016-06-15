/* Database name `mogoroomdb` , 品牌表添加品牌主营城市字段 */
use mogoroomdb

ALTER TABLE  `brand`   ADD COLUMN `mainSaleCity`  INT(11)  NULL   COMMENT '品牌主营城市'  AFTER  `site`;