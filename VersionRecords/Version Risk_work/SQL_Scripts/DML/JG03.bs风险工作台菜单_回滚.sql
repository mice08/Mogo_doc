/*删除风险工作台新增的菜单*/
USE mogoroomdb;
BEGIN;

DELETE FROM perm_functioninfo WHERE fname='房东风险工作台' AND furl='risk/workbrench';
DELETE FROM perm_functioninfo WHERE fname='房东风险审核' AND furl='risk/findLandlordRiskVerify';
DELETE FROM perm_functioninfo WHERE fname='权限控制记录' AND furl='risk/findAuthorityControlRecord';
DELETE FROM perm_functioninfo WHERE fname='命中规则记录' AND furl='risk/findHitRuleRecord';
DELETE FROM perm_functioninfo WHERE fname='审核记录' AND furl='risk/findVerifyRecord';
DELETE FROM perm_functioninfo WHERE fname='风险池' AND furl='risk/disposePool';
DELETE FROM perm_functioninfo WHERE fname='改变房东风险的状态' AND furl='risk/changeRiskLandlordRiskStatus';
DELETE FROM perm_functioninfo WHERE fname='规则统计' AND furl='risk/ruleStatistics';
DELETE FROM perm_functioninfo WHERE fname='审核统计' AND furl='risk/verifyStatistics';
DELETE FROM perm_functioninfo WHERE fname='房东统计' AND furl='risk/landlordStatistics';
DELETE FROM perm_functioninfo WHERE fname='操作详情' AND furl='risk/landlordOpereateRecord';

DELETE FROM perm_functioninfo WHERE fname='房东风险工作台' AND furl='';

COMMIT;