use mogoroomdb;

/*快照长度 +1024 目前33个key,value预留大约100长度 */
ALTER TABLE `cntr_salecontract_snapshot` MODIFY COLUMN `params`  varchar(4096) COMMENT '签订合同时的合同参数json' AFTER `templetId`;

/*合同表-(发起)绑定合同模板，templetType路由快照*/
ALTER TABLE `cntr_salecontract` ADD COLUMN `templetCode`  int NULL COMMENT '模板code(绑定)' AFTER `confirmDate`;

/*模板添加4个字段，变更2个字段的语义*/
ALTER TABLE `cntr_contract_templet`
MODIFY COLUMN `templetCode`  varchar(20) NOT NULL COMMENT '合同模板编码（编号）' AFTER `templetName`,
MODIFY COLUMN `status`  tinyint(1) NOT NULL COMMENT '状态,-1停用（禁） 0 停用 1启用' AFTER `templetPath`,
ADD COLUMN `templetType`  tinyint(1) NULL COMMENT '1:通用（系统） 2:房东（私有）3:历史  4：纸制 5：金融' AFTER `templetPath`,
ADD COLUMN `templetStatus`  tinyint(1) NULL COMMENT '1:发起（运营）2:生效（房东确认）' AFTER `templetType`,
ADD COLUMN `remark`  varchar(128) NULL COMMENT '备注',
ADD COLUMN `valid`  tinyint(1) NULL COMMENT '0：无效 1：有效';