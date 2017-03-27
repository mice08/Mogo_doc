/* Database name `mogoroomdb` */
USE mogoroomdb;

/* 替换消息模版 影响记录条数：64 */
UPDATE mesg_subtemplet SET templetContent = REPLACE(templetContent,'400-900-6868','400-060-6868') WHERE templetContent LIKE '%400-900-6868%';

/* 添加400客服导航 */
BEGIN;
INSERT INTO `tele_extnum` (phoneNum,extNum,startTime,STATUS,createBy,createByType,remark) VALUES ('3','0',NOW(),'1','-1','9','手工添加');
INSERT INTO `tele_sungoin_navi` (extNumId,naviId,ivrKey,ivrName,STATUS,createBy,createByType,remark) VALUES ((SELECT MAX(id) FROM tele_extnum),'11680783548','0','其他服务','1','-1','9','手工添加');
INSERT INTO `tele_sungoin_seat` (seatId,userId,cntctName,phone,userCode,STATUS,createBy,createByType,remark) VALUES ('82073929-f730-48a7-bf0d-6b58e6e0807d','48c828c4-e776-45d9-b1b9-b73528fc23cd','2001','02161514627','2001','1','-1','9','手工添加');
INSERT INTO user_info (user_name,mobile,real_name,remark,landlordId,regMobileCity) VALUES ('2001','02161514627','2001','手工添加','1','289');
INSERT INTO user_usertype (soDoneCode,userId,userType,createTime,createBy) VALUES ('12345',(SELECT MAX(id) FROM user_info),'1',NOW(),'-1');
INSERT INTO `tele_ext_usr_rel` (extNumId,userId,ctctId,ctctIdSource,seatId,STATUS,createBy,createByType,remark) VALUES ((SELECT MAX(id) FROM tele_extnum),'1',(SELECT MAX(id) FROM user_info),'1',(SELECT MAX(id) FROM tele_sungoin_seat),'0','-1','9','手工添加');
COMMIT;
