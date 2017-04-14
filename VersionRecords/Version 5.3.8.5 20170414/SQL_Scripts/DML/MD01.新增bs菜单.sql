/*新增bs菜单*/
USE mogoroomdb;

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
		'236104',
		'免押金房源库',
		'flats/findTpFlatsRoom',
		'19',
		'2',
		'3610',
		'1',
		NULL,
		NULL,
		NULL,
		'0',
		'1',
		NULL,
		NULL,
		NULL,
		NULL,
		'1',
		'2'
	);

