/*销售合同表.添加押金收取类型字段*/
use mogoroomdb;

ALTER TABLE cntr_saleContract ADD foregiftIncomeType TINYINT(4) NOT NULL DEFAULT '0' COMMENT '押金收取类型(0:收押金 1:芝麻信用免押金)';