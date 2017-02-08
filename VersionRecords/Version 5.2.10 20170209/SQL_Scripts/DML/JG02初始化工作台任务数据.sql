/* 初始化工作台任务数据  */

use mogoroomdb;


INSERT INTO `loan_workbench_task` (
	`employeeId`,
	`eventId`,
	`taskType`,
	`valid`
) SELECT
	e.financeServicer,
	e.id,
	1,
	1
FROM
	loan_workbench_event e
WHERE
	e.eventType = 'mogobaoVerify'
AND e.financeServicer IS NOT NULL;

INSERT INTO `loan_workbench_task` (
	`employeeId`,
	`eventId`,
	`taskType`,
	`valid`
) SELECT
	e.financeServicer,
	e.id,
	1,
	1
FROM
	loan_workbench_event e
WHERE
	e.eventType = 'mogobaoApplyOne'
AND e.financeServicer IS NOT NULL;

INSERT INTO `loan_workbench_task` (
	`employeeId`,
	`eventId`,
	`taskType`,
	`valid`
) SELECT
	e.financeServicer,
	e.id,
	2,
	1
FROM
	loan_workbench_event e
WHERE
	e.eventType = 'loanBuybackRenter'
AND e.financeServicer IS NOT NULL;

INSERT INTO `loan_workbench_task` (
	`employeeId`,
	`eventId`,
	`taskType`,
	`valid`
) SELECT
	e.financeServicer,
	e.id,
	2,
	1
FROM
	loan_workbench_event e
WHERE
	e.eventType = 'loanBuybackLandlord'
AND e.financeServicer IS NOT NULL;

