/* Database name `mogoroomdb` ��Ģ�����¸����������ֶ�*/
use mogoroomdb;

alter table `oder_subscription` add column `parentId` bigint(11) NULL COMMENT '������ID' after `id`;