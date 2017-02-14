/*BS芝麻菜单脚本*/

use mogoroomdb;

INSERT INTO `perm_functioninfo` (
	`fcode`,
	`fname`,
	`furl`,
	`seq`,
	`functionLevel`,
	`functionpId`,
	`functionisMenu`,
	`functionVcode`,
	`functionParam`,
	`functionFaclass`,
	`isAjax`,
	`functionType`,
	`createdBy`,
	`createdTime`,
	`updatedBy`,
	`updatedTime`,
	`status`,
	`channel`
)
VALUES
	(
		'2308903',
		'芝麻信用数据迁移同步',
		'tool/syncZhimaOpenId',
		'3',
		'2',
		'3089',
		'1',
		NULL,
		NULL,
		NULL,
		'0',
		'0',
		NULL,
		NULL,
		NULL,
		NULL,
		'1',
		'2'
	);