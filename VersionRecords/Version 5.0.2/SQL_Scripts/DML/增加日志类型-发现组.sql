/*  Database name `mogoroomdb`  增加日志类型 */
USE mogoroomdb;

/*插入解锁子帐号*/
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50102010,'解锁子帐号',1,1,3,1,50102);