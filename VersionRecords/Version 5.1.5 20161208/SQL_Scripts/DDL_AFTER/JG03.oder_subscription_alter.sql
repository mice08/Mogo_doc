/* Database name `mogoroomdb` ，蘑菇宝月付需求，增加字段*/
use mogoroomdb;

alter table `oder_subscription` add column `parentId` bigint(11) NULL COMMENT '父订购ID' after `id`;