/*  Database name `mogoroomdb` ，几个环境上的合同备注长度不一致，这次统一修改*/
use mogoroomdb;

ALTER TABLE `cntr_salecontract`   
  modify `contractRemark` `contractRemark` VARCHAR(512) NULL  COMMENT '合同备注';

ALTER TABLE `cntr_salecontract_his`   
  modify `contractRemark` `contractRemark` VARCHAR(512) NULL  COMMENT '合同备注';