
/*删除数据报表查询权限*/
use mogoroomdb;
BEGIN;
DELETE FROM perm_functioninfo where fname = '关键数据报表' and channel = 2;
DELETE FROM perm_functioninfo where fname = '在线支付趋势' and channel = 2;
DELETE FROM perm_functioninfo where fname = '在线支付趋势查询' and channel = 2;
DELETE FROM perm_functioninfo where fname = '租约确认趋势' and channel = 2;
DELETE FROM perm_functioninfo where fname = '租约确认趋势查询' and channel = 2;
DELETE FROM perm_functioninfo where fname = '签约数据报表' and channel = 2;
DELETE FROM perm_functioninfo where fname = '签约数据报表查询' and channel = 2;
DELETE FROM perm_functioninfo where fname = '关键数据报表查询' and channel = 2;

COMMIT;