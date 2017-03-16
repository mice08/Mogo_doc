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
) SELECT
	MAX(pm.fcode) + 1,
	'房东批量身份认证',
	'/tool/doIdentity',
	'17',
	'1',
	pf.id,
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
FROM
	perm_functioninfo pf,
	perm_functioninfo pm
WHERE
	pf.fname = '运营管理'
AND pf.id = pm.functionpid;