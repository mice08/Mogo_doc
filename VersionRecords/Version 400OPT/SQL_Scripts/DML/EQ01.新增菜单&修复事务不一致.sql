/*  Database name `mogoroomdb`  增加菜单&修复事务不一致数据 */
use mogoroomdb;

BEGIN;

/* 增加菜单-补充通话记录 */
INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ('334348', '通话记录补充', 'tele/supplyCallLog', 1, '2','3434', '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

/**修复事务不一致数据**/
UPDATE `tele_sungoin_seat` SET cntctName='加盟咨询',phone='15821387697' WHERE id=4140;

COMMIT;