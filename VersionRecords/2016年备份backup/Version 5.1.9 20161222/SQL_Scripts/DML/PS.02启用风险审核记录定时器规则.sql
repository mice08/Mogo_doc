/*PS.02启用风险审核记录定时器规则*/

mogoroomdb;

UPDATE comm_sysconfig SET val = 1 WHERE groupName='riskRule'
AND keyName != 'MH-ZK-003';
