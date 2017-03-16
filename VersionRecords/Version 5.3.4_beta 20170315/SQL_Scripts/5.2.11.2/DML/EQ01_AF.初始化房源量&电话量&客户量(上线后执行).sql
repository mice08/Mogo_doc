/*  Database name `mogoroomdb`  初始化房源量&电话量&客户量 */
USE mogoroomdb;

BEGIN;

/**初始化房源量。因为影响行是动态的，这里不指出*/
UPDATE  tele_extnum ext,
(SELECT extNumId,COUNT(1) cnt FROM flat_room_user_relation
WHERE STATUS=1 AND userSource=3 AND usertype='userType-1' AND extnumid!=-1
GROUP BY extNumId) rel
SET ext.roomNum=rel.cnt
WHERE ext.id=rel.extNumId;
 
/**初始化电话量&客户量。因为影响行是动态的，这里不指出*/ 
UPDATE  tele_extnum ext,
( SELECT t2.extNumId,COUNT(t1.id) teleNum,COUNT(DISTINCT t1.callerNo,t2.extNumId) custNum
        FROM
        tele_sungoin_calllog t1
        JOIN tele_calllog t2 ON t1.id = t2.`thrdPtyInfoId` AND t1.valid = 1 AND t2.valid = 1
        WHERE t2.extnumid!=-1
        GROUP BY t2.extNumId) calllog
SET ext.teleNum=calllog.teleNum,ext.custNum=calllog.custNum
WHERE ext.id=calllog.extNumId;

COMMIT;