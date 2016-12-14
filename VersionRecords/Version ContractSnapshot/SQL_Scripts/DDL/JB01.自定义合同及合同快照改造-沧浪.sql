use mogoroomdb;

/*快照长度 +1024 目前33个key,value预留大约100长度 */
ALTER TABLE `cntr_salecontract_snapshot` MODIFY COLUMN `params`  varchar(4096) COMMENT '签订合同时的合同参数json' AFTER `templetId`;

/*合同表-(发起)绑定合同模板，templetType路由快照*/
ALTER TABLE `cntr_salecontract` ADD COLUMN `templetCode`  int NULL COMMENT '模板code(绑定)' AFTER `confirmDate`;

/*模板添加4个字段，变更2个字段的语义*/
ALTER TABLE `cntr_contract_templet`
MODIFY COLUMN `templetCode`  varchar(20) NOT NULL COMMENT '合同模板编码（编号）' AFTER `templetName`,
MODIFY COLUMN `status`  tinyint(1) NOT NULL COMMENT '模板状态（参考字典表组名:cntrTempletStatus）' AFTER `templetPath`,
ADD COLUMN `templetType`  tinyint(1) NULL COMMENT '模板类型（参考字典表组名:cntrTempletType）' AFTER `templetPath`,
ADD COLUMN `templetStatus`  tinyint(1) NULL COMMENT '模板流程状态（参考字典表组名:cntrTempletFlow）' AFTER `templetType`,
ADD COLUMN `belongContractType` tinyint(1) NULL COMMENT '所属合同类型（参考字典表组名:cntrTempletBelong）' ,
ADD COLUMN `remark`  varchar(128) NULL COMMENT '备注',
ADD COLUMN `valid`  tinyint(1) NULL COMMENT '0：无效 1：有效';