/*添加房间风控定时器风险规则开关*/
USE mogoroomdb;

INSERT INTO `comm_sysconfig` (`keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`)VALUES('PT-JY-PayID-FDs-001','1','riskRule','定时器风险规则','val=1(启用)val=0(关闭)','2016-11-29 08:43:28','6','1',NULL,NULL);
INSERT INTO `comm_sysconfig` (`keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`)VALUES('PT-JY-PayID-ZKs-001','1','riskRule','定时器风险规则','val=1(启用)val=0(关闭)','2016-11-29 08:43:28','6','1',NULL,NULL);
INSERT INTO `comm_sysconfig` (`keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`)VALUES('PT-JY-Contr-CHs-001','1','riskRule','定时器风险规则','val=1(启用)val=0(关闭)','2016-11-29 08:43:28','6','1',NULL,NULL);
INSERT INTO `comm_sysconfig` (`keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`)VALUES('WZ-HZ-RMs-M-001','1','riskRoom','定时器风险规则','val=1(启用)val=0(关闭)','2016-11-29 08:43:28','6','1',NULL,NULL);
INSERT INTO `comm_sysconfig` (`keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`)VALUES('WZ-HZ-RMs-M-002','1','riskRoom','定时器风险规则','val=1(启用)val=0(关闭)','2016-11-29 08:43:28','6','1',NULL,NULL);


/*新增字字典数据*/
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`)VALUES('paymentAccount-1','paymentAccount','1','1','支付宝帐号','1',NULL,'paymentAccount-1');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`)VALUES('paymentAccount-2','paymentAccount','2','2','微信帐号','1',NULL,'paymentAccount-2');