/*  Database name `mogoroomdb`  增加房东月付转化报表 回滚*/
USE mogoroomdb;

BEGIN;

DELETE FROM `loan_landlord_trans`;

COMMIT;