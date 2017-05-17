/*  风控权限控制数据清理 */
use mogoroomdb;
/*  影响2860条 */
DELETE from risk_landlord_level where  phase=19;