/*风控房源数据初始化*/
USE mogoroomdb;
BEGIN;

INSERT INTO `comm_sysconfig` ( `keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`)
VALUES('WZ-ALL-Hid-001','1','riskRoom','房间风控定时器风险规则开关','val=1(启用)val=0(关闭)',CURRENT_TIMESTAMP,6,1,NULL,NULL);

COMMIT;