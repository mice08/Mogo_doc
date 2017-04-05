/* Database name `mogoroomdb`。对报修渠道进行整合，supp_repair更新数据*/
use mogoroomdb;

UPDATE supp_repair SET repairOrigin = 2 WHERE repairOrigin = 3;