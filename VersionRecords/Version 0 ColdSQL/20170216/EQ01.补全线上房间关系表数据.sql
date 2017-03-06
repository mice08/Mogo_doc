/*  Database name `mogoroomdb`  补全线上房间关系表数据 */
USE mogoroomdb;

BEGIN;

/**影响 7478 rows*/
INSERT INTO flat_room_user_relation(roomid,extnumid,userid,usersource,usertype,createby,updateby,donecode)
SELECT 
t1.id,t5.extnumid,t5.ctctid,3,'userType-1',-1,-1,-99
    FROM flat_room t1,flat_flats t2,user_landlord t3
    ,
    (
    SELECT * FROM user_info
    WHERE STATUS=1 AND done_code != -999 AND landlordid IS NOT NULL
    GROUP BY mobile,landlordid
    ) t4,
    (
    SELECT * FROM tele_ext_usr_rel WHERE valid=1 
    GROUP BY userid,ctctid
    ) t5
    WHERE t1.flatsid = t2.id AND t2.landlordid = t3.id 
    AND t3.id=t4.landlordid 
    AND t3.contactPhone=t4.mobile
    AND t4.id=t5.ctctId
    AND t1.STATUS=1 AND t1.id NOT IN (SELECT roomId FROM flat_room_user_relation 
    )
    AND t2.status=1 AND t3.status =1 
    AND (t1.createtime >'2016-12-13')
     ORDER BY t1.updatetime DESC; 
 
COMMIT;