/*新增任务字段*/
USE mogoroomdb;

ALTER TABLE `loan_workbench_task`
ADD COLUMN `sourceUserId`  int(11) NULL COMMENT '原始任务用户Id' AFTER `valid`;