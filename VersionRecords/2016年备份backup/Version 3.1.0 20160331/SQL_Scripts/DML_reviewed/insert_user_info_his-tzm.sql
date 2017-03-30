/* Database name `mogoroomdb` , 初始化房东/租客信息 */
use mogoroomdb;

INSERT INTO user_renter_info(userId, companyName, hobby, 
  accountNum, oldLiveStatus, createTime, createBy, 
    updateTime, updateBy, isVerified,soDoneCode,isBlack,blackRemark)
    SELECT id, companyName, hobby, 
  accountNum, oldLiveStatus, createTime, -1 AS createBy, 
    createtime, -1 AS updateBy, isVerified,200000000+id AS soDoneCode,isBlack,blackRemark FROM user_renter  WHERE id < (SELECT MIN(userid) FROM user_renter_info);



 INSERT INTO user_info(
id, user_name, mobile, gender, nick_name, real_name, career, birthday, constellation, photo, card_type, card_id, nationality, email, regist_id, login_device, member_num, acc_id,
		addr, edu, create_ip, emergency, emerg_phone, create_time, create_by, update_time, update_by, done_code, STATUS, remark, phoneExt, landlordId, hobby, picGroupId,
		weixin,firstLoginTime,latestLoginTime 
 ) 
 SELECT id, account, cellphone AS mobile, sex, nickName, realName, career, birthday, constellation, avatarUrl, cardType, idCard, (CASE WHEN nationality IS NOT NULL THEN nationality ELSE  1 END) AS nationality, email, regId, loginDevice, memberNum, NULL AS acc_id,
		communicationsAddress, educationalBackground, createIP, NULL AS emergency, NULL AS emerg_phone, createTime, -1 AS create_by,  createTime, -1 AS update_by, 
		200000000+id AS soDoneCode, STATUS, remark, 
		NULL AS phoneExt, NULL AS landlordId, hobby, NULL AS picGroupId,
		NULL AS weixin,NULL AS firstLoginTime,NULL AS latestLoginTime  FROM user_renter WHERE id <(SELECT MIN(id) FROM user_info );
		
		
INSERT INTO user_password (soDoneCode, userId, PASSWORD, passType, createTime, createBy, updateTime, updateBy)
SELECT id+200000000 AS soDoneCode,id AS userId,PASSWORD,1 AS passType,createTime,-1 AS createBy,createTime,-1 AS updateBy FROM user_renter WHERE password is not null and id <(SELECT MIN(userId) FROM user_password );

INSERT INTO user_usertype(userId, userType, STATUS, createTime, createBy, updateTime, updateBy,soDoneCode)
SELECT id ,4 AS userType,1 AS STATUS,createTime,-1 AS createBy,createTime,-1 AS updateBy,id+200000000  AS soDoneCode FROM user_renter WHERE id <(SELECT MIN(userId) FROM user_usertype );



INSERT INTO user_landlord_info(
 soDoneCode, userId, contactPhone, contractDate, salesmanId, accountNum, editPwdNum, 
    isSpecial, landlordType, brandName, isVerified, legalPerson, createTime, createBy, 
    updateTime, updateBy
) SELECT  id+300000000, (CASE  WHEN (id<3000000)  THEN id+3000000 ELSE  id END ) AS userId, contactPhone, contractDate, salesmanId, accountNum, editPwdNum, 
    isSpecial, userType, brandName, label AS isVerified, legalPerson, createTime, -1 AS createBy, 
    updateTime,-1 AS  updateBy FROM user_landlord  WHERE id <(SELECT MIN(userId) FROM user_landlord_info WHERE userid >3000000 );
    

  INSERT INTO user_info(
id, user_name, mobile, gender, nick_name, real_name, career, birthday, constellation, photo, card_type, card_id, nationality, email, regist_id, login_device, member_num, acc_id,
		addr, edu, create_ip, emergency, emerg_phone, create_time, create_by, update_time, update_by, done_code, STATUS, remark, phoneExt, landlordId, hobby, picGroupId,
		weixin,firstLoginTime,latestLoginTime 
 ) 
 SELECT (CASE  WHEN (id<3000000)  THEN id+3000000 ELSE  id END ) AS id, NAME, phone AS mobile, sex AS gender, 
 NULL AS nickName, name AS realName, NULL AS career, birthday, NULL AS constellation, photo AS avatarUrl, 0 AS cardType, identityid AS idCard, 
 1 AS nationality, email, regId, loginDevice, memberNum, NULL AS acc_id,
		NULL AS communicationsAddress, NULL AS educationalBackground, '127.0.0.1' AS createIP, emergency, emergencyPhone AS emerg_phone, createTime, -1 AS create_by,  createTime, -1 AS update_by, 
		300000000+id AS soDoneCode, STATUS, remark, 
		NULL AS phoneExt, NULL AS landlordId, NULL AS hobby, NULL AS picGroupId,
		weixin,firstLoginTime, latestLoginTime  FROM user_landlord WHERE id <(SELECT MIN(id) FROM user_info WHERE id >3000000);
		
		
INSERT INTO user_password (soDoneCode, userId, PASSWORD, passType, createTime, createBy, updateTime, updateBy)
SELECT id+300000000 AS soDoneCode, (CASE  WHEN (id<3000000)  THEN id+3000000 ELSE  id END ) AS userId, PASSWORD,1 AS passType,createTime,-1 AS createBy,createTime,-1 AS updateBy FROM user_landlord WHERE password is not null and  id <(SELECT MIN(userId) FROM user_usertype WHERE userid >3000000 );

INSERT INTO user_usertype(userId, userType, STATUS, createTime, createBy, updateTime, updateBy,soDoneCode)
SELECT (CASE  WHEN (id<3000000)  THEN id+3000000 ELSE  id END ) AS userId   ,0 AS userType,1 AS STATUS,createTime,-1 AS createBy,createTime,-1 AS updateBy,id+300000000  AS soDoneCode FROM user_landlord WHERE id <(SELECT MIN(userId) FROM user_usertype WHERE userid >3000000 );



