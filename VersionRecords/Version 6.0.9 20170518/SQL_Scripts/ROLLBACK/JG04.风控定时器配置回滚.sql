/*  风控权限控制回滚 */
use mogoroomdb;
/*  影响1条 */
UPDATE comm_sysconfig  SET val=0 WHERE id =244;