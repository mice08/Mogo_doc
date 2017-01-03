/*销售合同表.添加是否免押金字段*/
use mogoroomdb;

ALTER TABLE cntr_saleContract ADD gratis TINYINT(4) NOT NULL DEFAULT '0' COMMENT '是否免押金0：不是；1：是';