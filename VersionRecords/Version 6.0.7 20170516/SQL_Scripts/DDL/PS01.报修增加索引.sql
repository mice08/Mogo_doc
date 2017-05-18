/* Database name 'mogoroomdb' 报修增加索引*/
use mogoroomdb;

ALTER TABLE `supp_repair` ADD INDEX index_landlordId(`landlordId`);
