/*  Database name `mogoroomdb` �����������ϵĺ�ͬ��ע���Ȳ�һ�£����ͳһ�޸�*/
use mogoroomdb;

ALTER TABLE `cntr_salecontract`   
  modify `contractRemark` `contractRemark` VARCHAR(512) NULL  COMMENT '��ͬ��ע';

ALTER TABLE `cntr_salecontract_his`   
  modify `contractRemark` `contractRemark` VARCHAR(512) NULL  COMMENT '��ͬ��ע';