use mogoroomdb;

/*快照长度 +1024 目前33个key,value预留大约100长度 */
ALTER TABLE `cntr_salecontract_snapshot` MODIFY COLUMN `params`  varchar(4096) COMMENT '签订合同时的合同参数json' AFTER `templetId`;

/*合同表-(发起)绑定合同模板，templetType路由快照*/
ALTER TABLE `cntr_salecontract` ADD COLUMN `templetCode`  int NULL COMMENT '模板code(绑定)' AFTER `confirmDate`;

/*模板添加4个字段，变更2个字段的语义  templetName 允许 null*/
ALTER TABLE `cntr_contract_templet`
MODIFY COLUMN `templetCode`  varchar(20) NOT NULL COMMENT '合同模板编码（编号）' AFTER `templetName`,
MODIFY COLUMN `status`  tinyint(1) NOT NULL COMMENT '模板状态(0:初始 1:确认生效 2:暂停 3.永久停用)' AFTER `templetPath`,
ADD COLUMN `templetType`  tinyint(1) NULL COMMENT '模板类型(1:通用 2:私有)' AFTER `templetPath`,
ADD COLUMN `belongContractType` tinyint(1) NULL COMMENT '所属合同类型(1:租房 2:金融)' ,
ADD COLUMN `remark`  varchar(128) NULL COMMENT '备注',
ADD COLUMN `valid`  tinyint(1) NULL COMMENT '有效性(0:无效 1:有效)';