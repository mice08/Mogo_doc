/*PS.01关闭风险审核记录定时器规则*/



use mogoroomdb;


UPDATE comm_sysconfig SET val = 0  WHERE keyName IN ('MH-ZK-001','MH-ZK-002','MH-ZK-003');