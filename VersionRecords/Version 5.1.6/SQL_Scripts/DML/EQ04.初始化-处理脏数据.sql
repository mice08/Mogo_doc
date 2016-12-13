/* Database name `mogoroomdb`, 初始化-处理脏数据 */

USE mogoroomdb;

/**修改重复contactphone*/
UPDATE user_landlord SET contactphone=13818946682 WHERE id=3100641;
UPDATE user_landlord SET contactphone=13850303033 WHERE id=3102450;
UPDATE user_landlord SET contactphone=13799991111 WHERE id=3100387;
UPDATE user_landlord SET contactphone=13391059580 WHERE id=3102063;
UPDATE user_landlord SET contactphone=18917874800 WHERE id=3102957;
UPDATE user_landlord SET contactphone=15000217773 WHERE id=59;
UPDATE user_landlord SET contactphone=18201421879 WHERE id=3101964;
UPDATE user_landlord SET contactphone=18017589659 WHERE id=3100571;
UPDATE user_landlord SET contactphone=18959328888 WHERE id=3101313;
UPDATE user_landlord SET contactphone=18759335677 WHERE id=3100833;

/**一个手机号对应两个userinfo的记录，总共有三个手机号是这样的。
*/
UPDATE user_info SET STATUS = 0 WHERE id=4000647;

UPDATE flat_room_user_relation SET userid=4000236
WHERE userSource=3 AND STATUS=1 AND userid=4000647 AND usertype='userType-1';

UPDATE flat_room_user_relation SET userid=4282022
WHERE userSource=3 AND STATUS=1 AND userid=4290636 AND usertype='userType-1';

/**联系人手机号与房东的手机号一样，但归属的不是该房东。*/
UPDATE user_info t1,
(

SELECT DISTINCT t2.id
 FROM user_info t2
 WHERE   t2.status =1
 AND t2.landlordId IN
 (
 SELECT id FROM user_landlord WHERE  STATUS=1
 )
 AND t2.mobile IN
 (
SELECT contactPhone FROM user_landlord WHERE STATUS=1 AND id<>t2.landlordid
 )
 AND t2.id NOT IN
 (

SELECT DISTINCT t2.id
 FROM flat_room_user_relation t1,user_info t2
 WHERE  t1.userid=t2.id AND t1.userSource =3 AND  t1.status=1 AND t1.usertype='userType-1' AND t2.status =1 AND
 t2.landlordId IN
 (
 SELECT id FROM user_landlord WHERE  STATUS=1
 )
 AND t2.mobile IN
 (
SELECT contactPhone FROM user_landlord WHERE STATUS=1 AND id<>t2.landlordid
 )

 )

 ) t2
 SET t1.done_code=-999,t1.remark='非联系人数据，借用done_code=-999来过滤这些数据'
 WHERE t1.id = t2.id;



UPDATE flat_room_user_relation SET userSource=1,userid=67 WHERE userSource=3 AND STATUS=1 AND userid=4000256 AND usertype='userType-1';
UPDATE flat_room_user_relation SET userSource=1,userid=3100229 WHERE userSource=3 AND STATUS=1 AND userid=4000123 AND usertype='userType-1';
UPDATE flat_room_user_relation SET userSource=1,userid=3100105 WHERE userSource=3 AND STATUS=1 AND userid=4000215 AND usertype='userType-1';
UPDATE flat_room_user_relation SET userSource=1,userid=3100032 WHERE userSource=3 AND STATUS=1 AND userid=4000082 AND usertype='userType-1';
UPDATE flat_room_user_relation SET userSource=1,userid=3100211 WHERE userSource=3 AND STATUS=1 AND userid=4000458 AND usertype='userType-1';
UPDATE flat_room_user_relation SET userSource=1,userid=3103838 WHERE userSource=3 AND STATUS=1 AND userid=4260140 AND usertype='userType-1';
UPDATE flat_room_user_relation SET userSource=1,userid=3100167 WHERE userSource=3 AND STATUS=1 AND userid=4111269 AND usertype='userType-1';
UPDATE flat_room_user_relation SET userSource=1,userid=3103435 WHERE userSource=3 AND STATUS=1 AND userid=4263263 AND usertype='userType-1';
UPDATE flat_room_user_relation SET userSource=1,userid=3100441 WHERE userSource=3 AND STATUS=1 AND userid=4000482 AND usertype='userType-1';

/**联系人手机号与房东的手机号一样，归属是该房东，只是userinfo有重复记录*/
UPDATE user_info t1,
(

SELECT t1.id FROM user_info t1,
user_landlord t2
WHERE t1.status=1 AND t2.`status`=1
 AND t1.done_code!=-999 AND t1.phoneext IS NOT NULL
AND t1.mobile=t2.`contactPhone`
AND t1.landlordid  IN (SELECT id FROM user_landlord WHERE STATUS=1)
AND t1.mobile IN
(
SELECT t1.mobile FROM user_info t1,
user_landlord t2
WHERE t1.status=1 AND t2.`status`=1
 AND t1.done_code!=-999 AND t1.phoneext IS NOT NULL
AND t1.mobile=t2.`contactPhone`
AND t1.landlordid  IN (SELECT id FROM user_landlord WHERE STATUS=1)
GROUP BY t1.mobile
HAVING COUNT(1)>1
)
AND t1.id NOT IN
(
SELECT DISTINCT t2.id
 FROM flat_room_user_relation t1,user_info t2
WHERE t1.userid=t2.id AND t1.userSource =3 AND t1.status=1 AND t1.usertype='userType-1'
AND t2.status =1 AND t2.landlordid  IN (SELECT id FROM user_landlord WHERE STATUS=1) AND t2.done_code!=-999 AND t2.phoneext IS NOT NULL
)

) t2
 SET t1.done_code=-999,t1.remark='非联系人数据2，借用done_code=-999来过滤这些数据'
 WHERE t1.id = t2.id;