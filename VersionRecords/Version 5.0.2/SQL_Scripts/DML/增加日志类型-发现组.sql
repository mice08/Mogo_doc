/*  Database name `mogoroomdb`  增加日志类型 */
USE mogoroomdb;

/*插入解锁子帐号*/
INSERT INTO `comm_busitype`(busiType,busiName,status,sort,level,isLeaf,parentId) VALUES(50102010,'解锁子帐号',1,1,3,1,50102);

/*该菜单fcode不符合规则，目前也没用到，影响新的一级菜单创建*/
delete from perm_functioninfo where (fcode='H000000' or fcode='I000000') and channel=4 and functionLevel=1;