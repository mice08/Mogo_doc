/*添加逻辑删除字段*/


use mogoroomdb;


ALTER TABLE oder_signedorder ADD COLUMN valid TINYINT(1) NOT NULL DEFAULT 1 COMMENT '是否逻辑删除(0:逻辑删除,1:否)';
ALTER TABLE cntr_saleContract ADD COLUMN valid TINYINT(1) NOT NULL DEFAULT 1 COMMENT '是否逻辑删除(0:逻辑删除,1:否)';
ALTER TABLE cntr_SaleContractUserRel ADD COLUMN valid TINYINT(1) NOT NULL DEFAULT 1 COMMENT '是否逻辑删除(0:逻辑删除,1:否)';
