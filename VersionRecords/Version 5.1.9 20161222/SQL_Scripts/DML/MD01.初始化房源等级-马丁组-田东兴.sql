/* Database name `mogoroomdb` ，初始化房源等级*/
use mogoroomdb;

UPDATE flat_flats SET LEVEL = 2 WHERE LEVEL IS NULL;
