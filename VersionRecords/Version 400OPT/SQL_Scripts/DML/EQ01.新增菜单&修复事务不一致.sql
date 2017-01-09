/*  Database name `mogoroomdb`  增加菜单&修复事务不一致数据 */
use mogoroomdb;

BEGIN;

/* 增加菜单-补充通话记录 */
INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ('334348', '通话记录补充', 'tele/supplyCallLog', 9, '2','3434', '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

/**修复事务不一致数据**/
UPDATE `tele_sungoin_seat` SET cntctName='加盟咨询',phone='15821387697' WHERE id=4140;

/**修复入住人：13681896549 不能新建userinfo,用4311008代替4335374即可*/
UPDATE flat_room_user_relation SET userid=4311008
WHERE userSource =3 AND usertype='userType-1' AND userid=4335374;
UPDATE tele_ext_usr_rel SET ctctid=4311008
WHERE userid=3104393 AND usertype=0 AND ctctid =4335374  AND ctctidsource=1;

/**上次修复入住人，漏掉的逻辑**/
INSERT INTO user_usertype(soDoneCode,userid,usertype,STATUS,createTime,createBy,updateTime,updateBy)
 SELECT id+900000000,id,1,1,NOW(),-1,NOW(),-1 FROM user_info
 WHERE id IN (4359649,4359650,4359651,4359652,4359653,4359654,4359655,4359656,4359657,4359658,4359659,4359660,4359661,4359662,4359663,4359664,4359665,4359666,4359667);

COMMIT;