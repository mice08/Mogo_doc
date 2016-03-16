use mogoroomdb;

# 给roompricebase加一个唯一索引
ALTER TABLE `flat_roompricebase`
DROP INDEX `idx_goodsId_goodsIdType` ,
ADD UNIQUE INDEX `idx_goodsId_goodsIdType` (`goodsId`, `goodsIdType`) USING BTREE ;

# 给acct_busibilldtl增加滞纳金总额字段
ALTER TABLE `acct_busibilldtl`
MODIFY COLUMN `beforeAmount`  decimal(10,2) NOT NULL COMMENT '账单支付前的未付金额' AFTER `amount`,
ADD COLUMN `penaltyAmount`  decimal(10,2) NULL COMMENT '账单支付前的滞纳金总额' AFTER `beforeAmount`;




