/* Database name `mogoroomdb` ,删除视图、修改表名*/
use mogoroomdb;


DROP VIEW `find_service_evaluate`;

RENAME TABLE `supp_service_evaluate` TO `find_service_evaluate`;