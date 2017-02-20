/*  Database name `mogoroomdb`  更新房源等级 */
USE mogoroomdb;

update flat_flats set level = 2 where level = 0 and status = 1;