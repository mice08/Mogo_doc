use bizd;

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		1,
		'房东系统使用情况',
		'managementTool',
		'管理工具',
		'label',
		1,
		'一级管理工具',
		'1',
		NULL,
		'100001',
		NULL ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		2,
		'房东系统使用情况',
		'manuscripts',
		'手抄本',
		'checkbox',
		1,
		'二级手抄本',
		'2',
		NULL,
		'10000101',
		1 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		3,
		'房东系统使用情况',
		'excel',
		'Excel',
		'checkbox',
		2,
		'二级excel',
		'2',
		NULL,
		'10000102',
		1 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		4,
		'房东系统使用情况',
		'hotelManagementSys',
		'酒店管理系统',
		'checkbox',
		3,
		'二级酒店管理系统',
		'2',
		NULL,
		'10000103',
		1 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		5,
		'房东系统使用情况',
		'apartmentManagementSys',
		'公寓管理系统',
		'checkbox',
		4,
		'二级公寓管理系统',
		'2',
		NULL,
		'10000104',
		1 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		6,
		'房东系统使用情况',
		'managementElse',
		'其他',
		'checkbox',
		5,
		'二级其他',
		'2',
		NULL,
		'10000104',
		1 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);
INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		7,
		'房东系统使用情况',
		'managementElseInput',
		'',
		'input',
		6,
		'二级其他输入',
		'2',
		NULL,
		'10000104',
		1 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		8,
		'房东系统使用情况',
		'cooperationObject',
		'现合作对象',
		'label',
		2,
		'一级现合作对象',
		'1',
		NULL,
		'100002',
		NULL ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		9,
		'房东系统使用情况',
		'cooperationObjectNone',
		'无',
		'checkbox',
		1,
		'二级无合作对象',
		'2',
		NULL,
		'10000201',
		8 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		10,
		'房东系统使用情况',
		'baletu',
		'巴乐兔',
		'checkbox',
		2,
		'二级巴乐兔',
		'2',
		NULL,
		'10000202',
		8 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		11,
		'房东系统使用情况',
		'shuidiguanjia',
		'水滴管家',
		'checkbox',
		3,
		'二级水滴管家',
		'2',
		NULL,
		'10000203',
		8 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		12,
		'房东系统使用情况',
		'huifenqi',
		'会分期',
		'checkbox',
		4,
		'二级水滴管家',
		'2',
		NULL,
		'10000204',
		8 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		13,
		'房东系统使用情况',
		'cooperationObjectElse',
		'其他',
		'checkbox',
		5,
		'二级合作对象其他',
		'2',
		NULL,
		'10000205',
		8 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		14,
		'房东系统使用情况',
		'cooperationObjectElseInput',
		'',
		'input',
		6,
		'二级合作对象其他输入',
		'2',
		NULL,
		'10000206',
		8 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		15,
		'房东系统使用情况',
		'flowPlatform',
		'合作平台',
		'label',
		3,
		'一级合作平台',
		'1',
		NULL,
		'100003',
		NULL ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		16,
		'房东系统使用情况',
		'flowPlatformNone',
		'无',
		'checkbox',
		1,
		'二级无合作平台',
		'2',
		NULL,
		'10000301',
		15 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		17,
		'房东系统使用情况',
		'58tongcheng',
		'58同城',
		'checkbox',
		2,
		'二级58同城',
		'2',
		NULL,
		'10000302',
		15 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		18,
		'房东系统使用情况',
		'baixingwang',
		'百姓网',
		'checkbox',
		3,
		'二级百姓网',
		'2',
		NULL,
		'10000303',
		15 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		19,
		'房东系统使用情况',
		'anjuke',
		'安居客',
		'checkbox',
		4,
		'二级安居客',
		'2',
		NULL,
		'10000304',
		15 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		20,
		'房东系统使用情况',
		'soufangwang',
		'搜房网',
		'checkbox',
		5,
		'二级搜房网',
		'2',
		NULL,
		'10000305',
		15 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		21,
		'房东系统使用情况',
		'flowPlatformElse',
		'其他',
		'checkbox',
		6,
		'二级流量平台其他',
		'2',
		NULL,
		'10000306',
		15 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		22,
		'房东系统使用情况',
		'flowPlatformElseInput',
		'',
		'input',
		7,
		'二级流量平台其他输入',
		'2',
		NULL,
		'10000307',
		15 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		23,
		'房东系统使用情况',
		'financialProducts',
		'金融产品',
		'label',
		4,
		'一级金融产品',
		'1',
		NULL,
		'100004',
		null ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		24,
		'房东系统使用情况',
		'financialProductsNone',
		'无',
		'checkbox',
		1,
		'二级无金融产品',
		'2',
		NULL,
		'10000401',
		23 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		25,
		'房东系统使用情况',
		'yingjia',
		'盈家',
		'checkbox',
		2,
		'二级盈家',
		'2',
		NULL,
		'10000402',
		23 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		26,
		'房东系统使用情况',
		'baletu',
		'巴乐兔',
		'checkbox',
		3,
		'二级巴乐兔',
		'2',
		NULL,
		'10000403',
		23 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		27,
		'房东系统使用情况',
		'pinganhaofang',
		'平安好房',
		'checkbox',
		4,
		'二级平安好房',
		'2',
		NULL,
		'10000404',
		23 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		28,
		'房东系统使用情况',
		'fangsiling',
		'房司令',
		'checkbox',
		5,
		'二级房司令',
		'2',
		NULL,
		'10000405',
		23 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		29,
		'房东系统使用情况',
		'financialProductsElse',
		'其他',
		'checkbox',
		6,
		'二级其他',
		'2',
		NULL,
		'10000406',
		23 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		30,
		'房东系统使用情况',
		'financialProductsElseInput',
		'',
		'input',
		7,
		'二级其他输入',
		'2',
		NULL,
		'10000407',
		23 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		31,
		'房东系统使用情况',
		'intelligentHardware',
		'智能硬件',
		'label',
		5,
		'一级智能硬件',
		'2',
		NULL,
		'100005',
		null ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		32,
		'房东系统使用情况',
		'intelligentHardwareNone',
		'无',
		'checkbox',
		1,
		'二级无智能硬件',
		'2',
		NULL,
		'10000501',
		31 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		33,
		'房东系统使用情况',
		'intelligentHardwareDoor',
		'智能门锁',
		'checkbox',
		2,
		'二级智能门锁',
		'2',
		NULL,
		'10000502',
		31 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		34,
		'房东系统使用情况',
		'intelligentHardwareEle',
		'智能电表',
		'checkbox',
		3,
		'二级智能电表',
		'2',
		NULL,
		'10000503',
		31 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		35,
		'房东系统使用情况',
		'intelligentHardwareWater',
		'智能水表',
		'checkbox',
		4,
		'二级智能水表',
		'2',
		NULL,
		'10000504',
		31 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		36,
		'房东系统使用情况',
		'intelligentHardwareGas',
		'智能燃气表',
		'checkbox',
		5,
		'二级智能燃气表',
		'2',
		NULL,
		'10000505',
		31 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		37,
		'房东系统使用情况',
		'cooperationDemand',
		'合作需求',
		'label',
		6,
		'一级合作需求',
		'1',
		NULL,
		'100006',
		null ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		38,
		'房东系统使用情况',
		'system',
		'系统',
		'checkbox',
		1,
		'二级系统合作需求',
		'2',
		NULL,
		'10000601',
		37 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		39,
		'房东系统使用情况',
		'flow',
		'流量',
		'checkbox',
		2,
		'二级流量合作需求',
		'2',
		NULL,
		'10000602',
		37 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		40,
		'房东系统使用情况',
		'finance',
		'金融',
		'checkbox',
		3,
		'二级金融合作需求',
		'2',
		NULL,
		'10000603',
		37 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		41,
		'房东系统使用情况',
		'cooperationDemandElse',
		'其他',
		'checkbox',
		4,
		'二级其他合作需求',
		'2',
		NULL,
		'10000604',
		37 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		42,
		'房东系统使用情况',
		'cooperationDemandElseInput',
		'',
		'input',
		5,
		'二级其他合作需求输入',
		'2',
		NULL,
		'10000605',
		37 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		43,
		'房东系统使用情况',
		'remark',
		'备注',
		'label',
		7,
		'一级备注',
		'1',
		NULL,
		'100007',
		null ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);

INSERT INTO bizd_question (
	id,
	paperChannel,
	field,
	fieldName,
	fieldType,
	sort,
	description,
	LEVEL,
	qtype,
	qcode,
	parentId,
	createBy,
	createByType,
	createTime,
	updateBy,
	updateByType,
	updateTime,
	valid
)
VALUES
	(
		44,
		'房东系统使用情况',
		'remarkInput',
		'',
		'input',
		1,
		'一级备注',
		'2',
		NULL,
		'10000701',
		43 ,- 1 ,- 1,
		now() ,- 1 ,- 1,
		NULL,
		1
	);