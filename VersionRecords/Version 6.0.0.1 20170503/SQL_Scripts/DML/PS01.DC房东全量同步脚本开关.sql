use mogoroomdb;

/*添加dc全量同步房东定时任务开关*/

INSERT INTO `comm_sysconfig` (`keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`) VALUES ('DcLandDtlRealTask', '1', 'dcTask', '数据中心-房东-明细-实时-天（DC）', 'val=1(启用)val=0(关闭)', now(), '0', '0', NULL, NULL);
