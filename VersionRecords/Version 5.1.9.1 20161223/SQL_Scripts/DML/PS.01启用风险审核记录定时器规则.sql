/*PS.01启用风险审核记录定时器规则*/

use mogoroomdb;
UPDATE comm_sysconfig SET val =1 WHERE keyname='MH-ZK-003'
AND groupName='riskRule';