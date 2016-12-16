/*删除权限字段*/
USE mogoroomdb;

ALTER TABLE `loan_workbench_event`
DROP COLUMN `functionCode`;