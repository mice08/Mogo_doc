/*角色分类数据初始化*/
use mogoroomdb;

/*角色分类数据初始化*/
use mogoroomdb;

update perm_role set roleGroup='默认';

UPDATE perm_role
SET roleGroup = '员工及分店管理'
WHERE
	roleName REGEXP  (
		'员工管理|员工查看|分店管理|关闭分店管理|房源分配管理'
	);

UPDATE perm_role
SET roleGroup = '租金宝'
WHERE
	roleName REGEXP ('租金宝管理');

UPDATE perm_role
SET roleGroup = '维修投诉售后'
WHERE
	roleName REGEXP (
		'维修投诉管理|维修投诉查看'
	);

UPDATE perm_role
SET roleGroup = '业主及业主账单'
WHERE
	roleName REGEXP (
		'业主信息管理|业主账单管理|业主账单查看'
	);

UPDATE perm_role
SET roleGroup = '房源信息'
WHERE
	roleName REGEXP (
		'房源信息管理|房源信息查看|房源信息删除'
	);

UPDATE perm_role
SET roleGroup = '销售管理'
WHERE
	roleName REGEXP (
		'销售管理|账单管理|账单收款管理|销售单&账单作废|账单优惠管理|改账单最晚支付日|销售情况查看|账单查看|账单收款查看|销售情况导出|账单导出|账单收款导出'
	);

UPDATE perm_role
SET roleGroup = '财务管理'
WHERE
	roleName REGEXP (
		'充值及提现管理|核销收支管理|取消核销收支管理|财务报表查看|财务报表导出|退款审核管理|退款审核查看'
	);