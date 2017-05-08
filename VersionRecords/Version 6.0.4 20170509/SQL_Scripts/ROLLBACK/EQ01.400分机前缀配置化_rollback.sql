/* Database name `mogoroomdb` */
USE mogoroomdb;

/* 系统配置表新增400分机号城市前缀配置-回滚，影响记录条数：13  。这个表没有逻辑删除字段，只能物理删除 */
DELETE FROM comm_sysconfig WHERE groupname='tele_city'
