use mogoroomdb;
/* Database name `mogoroomdb` ，新增蘑菇金融申请开关配置*/

INSERT INTO `comm_sysconfig` (
	`keyName`,
	`val`,
	`groupName`,
	`name`,
	`remark`,
	`updateTime`,
	`updateByType`,
	`updateBy`
)
VALUES
	(
		'loan_mogoBaoSwich',
		'1',
		'LOAN_FINANCE_SERVICE',
		'蘑菇宝申请开关',
		NULL,
		NOW(),
		'5',
		'0'
	);

INSERT INTO `comm_sysconfig` (
	`keyName`,
	`val`,
	`groupName`,
	`name`,
	`remark`,
	`updateTime`,
	`updateByType`,
	`updateBy`
)
VALUES
	(
		'loan_mothPaySwich',
		'1',
		'LOAN_FINANCE_SERVICE',
		'月付申请开关',
		NULL,
		NOW(),
		'5',
		'0'

	);
