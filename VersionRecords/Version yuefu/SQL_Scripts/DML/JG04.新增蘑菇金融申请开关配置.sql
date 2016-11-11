use mogoroomdb;
/* Database name `mogoroomdb` ，新增蘑菇金融申请开关配置*/

INSERT INTO comm_sysconfig (

	`keyName`,
	`val`,
	`groupName`,
	`name`,
	`remark`
)
VALUES
	(
		'loan_mothPaySwich',
		'0',
		'LOAN_FINANCE_SERVICE',
		'月付申请开关',
		NULL
	);

INSERT INTO comm_sysconfig(

	`keyName`,
	`val`,
	`groupName`,
	`name`,
	`remark`

)
VALUES
	(
		'loan_mogoBaoSwich',
		'0',
		'LOAN_FINANCE_SERVICE',
		'蘑菇宝申请开关',
		NULL
	);