/*�޸ĺ�ͬ���ձ��params�ֶγ���Ϊ3072*/
use mogoroomdb;

ALTER TABLE `cntr_salecontract_snapshot` modify COLUMN `params` VARCHAR (3072) NULL COMMENT 'ǩ����ͬʱ�ĺ�ͬ����json';
