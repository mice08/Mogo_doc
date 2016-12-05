/*更新所有user_employee中userId重叠的数据*/
use mogoroomdb;

update bill_cbfoperlog set createBy= createBy+2000000 where createBy<2000000 and createByType=5;
update bill_exemptinfo set createBy= createBy+2000000 where createBy<2000000 and createByType=5;

update bill_loan set auditorId= auditorId +2000000 where auditorId <2000000;

update bill_paymentrecord set userType=4 where userType=1;
update bill_paymentrecord set userType=0 where userType=2;


update bill_salebill set userType = 4 where userType=1;
update bill_salebill set userType = 0 where userType=2;

update oder_businessorder set userType = 4 where userType=1;
update oder_businessorder set userType = 0 where userType=2;


update city_country set createEmployeeId = createEmployeeId+2000000  where createEmployeeId <2000000;

update cntr_contract_clause set createBy = createBy+2000000  where createByType=5 and createBy<2000000;
update cntr_contract_clause set updateBy = updateBy+2000000  where updateByType=5 and updateBy<2000000;


update cntr_contract_templet set createBy = createBy+2000000  where createByType=5 and createBy<2000000;
update cntr_contract_templet set updateBy = updateBy+2000000  where updateByType=5 and updateBy<2000000;


update cntr_contract_templet_clause_rel set createBy = createBy+2000000  where createByType=5 and createBy<2000000;
update cntr_contract_templet_clause_rel set updateBy = updateBy+2000000  where updateByType=5 and updateBy<2000000;


update  cntr_salecontract_change set createBy = createBy+2000000  where createBy<2000000  and createByType=5;
update  cntr_salecontract_change set updateBy = updateBy+2000000  where updateBy<2000000  and updateByType=5;

update  cntr_salecontract_downloadlogs set downloadBy = downloadBy +2000000  where downloadBy <2000000  and  downloadByType =5;


update  cntr_salecontractuserrel set userId = userId+2000000  where userId <2000000 and userType=5;

update  comm_business_record set operator = operator +2000000  where operator <2000000 and operatorType=5;

update  comm_operation_log set operator = operator +2000000  where operator<2000000 and operatorType=5;

update  comm_picture set create_by = create_by +2000000  where create_by<2000000 and create_by_type=5;
update  comm_picture set updateBy = updateBy +2000000  where updateBy<2000000 and updateByType=5;

update  comm_picture_group set createBy = createBy +2000000  where createBy<2000000 and createByType=5;

update coms_bbschannel set createBy = createBy+2000000 where createBy<2000000;
update coms_bbschannel set updateBy = updateBy+2000000 where updateBy<2000000;

update coms_context set createBy = createBy+2000000 where createBy<2000000;
update coms_context set updateBy = updateBy+2000000 where updateBy<2000000;

update coms_helptype set createBy = createBy+2000000 where createBy<2000000;
update coms_helptype set updateBy = updateBy+2000000 where updateBy<2000000;

update coms_hothouse set updateBy = updateBy+2000000 where updateBy<2000000;
update coms_hothouse set createBy = createBy+2000000 where createBy<2000000;

update coms_hottab set updateBy = updateBy+2000000 where updateBy<2000000;
update coms_hottab set createBy = createBy+2000000 where createBy<2000000;

update coms_menu set updateBy = updateBy+2000000 where updateBy<2000000;
update coms_menu set createBy = createBy+2000000 where createBy<2000000;

update flat_community set createBy = createBy+2000000 where createBy<2000000 and createByType=5;
update flat_community set updateBy = updateBy+2000000 where updateBy<2000000 and updateByType=5;

update flat_community_his set createBy = createBy+2000000 where createBy<2000000 and createByType=5;
update flat_community_his set updateBy = updateBy+2000000 where updateBy<2000000 and updateByType=5;

update flat_community_property set createBy = createBy+2000000 where createBy<2000000 and createByType=5;
update flat_community_property set updateBy = updateBy+2000000 where updateBy<2000000 and updateByType=5;

update flat_flats set saleManId = saleManId +2000000 where saleManId <2000000;
update flat_flats set createBy = createBy +2000000 where createBy <2000000 and createChannel=2;
update flat_flats set updateBy = updateBy +2000000 where updateBy <2000000 and updateChannel=2;

update flat_flats_prototype set createBy = createBy +2000000 where createBy <2000000 and createChannel=2;
update flat_flats_prototype set updateBy = updateBy +2000000 where updateBy <2000000 and updateChannel=2;

update flat_tag set userId = userId +2000000 where userId <2000000  and userType=5;


update flat_joint_landlord set createBy = createBy +2000000 where createBy <2000000  and createByType=5;
update flat_joint_landlord set updateBy = updateBy +2000000 where updateBy <2000000  and updateByType=5;

update flat_jointroom set employeeId = employeeId +2000000 where employeeId <2000000; 

update flat_propertyquery_log set employeeId = employeeId +2000000 where employeeId <2000000; 

update flat_price_his set createBy=createBy+2000000 where createByType=1;

update flat_room set createBy = createBy +2000000 where createBy <2000000  and createChannel=2; /*数据创建来源(1:租客APP,2:BS后台,3:官网,4:房东APP,5:房东PC)*/
update flat_room set updateBy = updateBy +2000000 where updateBy <2000000  and updateChannel=2; /*数据创建来源(1:租客APP,2:BS后台,3:官网,4:房东APP,5:房东PC)*/


update flat_room_grade set createBy = createBy +2000000 where createBy <2000000  and createType=5;
update flat_room_grade set updateBy = updateBy +2000000 where updateBy <2000000  and updateType=5;

update flat_room_picture set verifyId = verifyId +2000000 where verifyId<2000000;
update flat_room_picture set uploadUserId = uploadUserId +2000000 where channel=2;

update flat_room_prototype set createBy = createBy +2000000 where createBy <2000000  and createChannel=2; /*数据创建来源(1:租客APP,2:BS后台,3:官网,4:房东APP,5:房东PC)*/
update flat_room_prototype set updateBy = updateBy +2000000 where updateBy <2000000  and updateChannel=2; /*数据创建来源(1:租客APP,2:BS后台,3:官网,4:房东APP,5:房东PC)*/

update flat_room_score set updateBy = updateBy +2000000 where updateBy <2000000  and updateByType=5;
update flat_room_score set createBy = createBy +2000000 where createBy <2000000  and createByType=5;


update flat_room_user_relation set userId=2000000+userId where userId<2000000 and userSource=2;
update flat_room_user_relation set createBy=2000000+createBy where createBy<2000000;
update flat_room_user_relation set updateBy=2000000+updateBy where updateBy<2000000;


update flat_roompricebase set createBy = createBy +2000000 where createBy <2000000  and createByType=5;
update flat_roompricebase set deleteBy = deleteBy +2000000 where deleteBy <2000000  and deleteByType=5;

update flat_roomprice set createBy = createBy +2000000 where createBy <2000000  and createByType=5;
update flat_roomprice set deleteBy = deleteBy +2000000 where deleteBy <2000000  and deleteByType=5;



update landlord_community_relation set createBy = createBy+2000000 where  createBy<2000000 and createByType=5;

update loan_landlord_buyback set createUser= createUser +2000000 where createUser <2000000;
update loan_landlord_buyback set modifyUser= modifyUser +2000000 where modifyUser <2000000;

/*
update loan_contract set approvalUser= approvalUser+2000000 where approvalUser<2000000;
update loan_contract set fundConfirmer= fundConfirmer+2000000 where fundConfirmer<2000000;
*/

update loan_landlord_contract set approvalUser= approvalUser+2000000 where approvalUser<2000000;

/*
update loan_landlord_contract set fundConfirmer= fundConfirmer+2000000 where fundConfirmer<2000000;
*/

update loan_landlord_credit set createUser= createUser+2000000 where createUser<2000000;
update loan_landlord_credit set modifyUser= modifyUser+2000000 where modifyUser<2000000;

update loan_landlord_creditlog set modifyUser= modifyUser+2000000 where modifyUser<2000000;


update loan_landlord_fee set createBy= createBy+2000000 where createBy<2000000;
update loan_landlord_fee set updateBy= updateBy+2000000 where updateBy<2000000;

update loan_landlord_mgmt set createUser= createUser+2000000 where createUser<2000000;
update loan_landlord_mgmt set modifyUser= modifyUser+2000000 where modifyUser<2000000;

update loan_landlord_payplan set createUser= createUser+2000000 where createUser<2000000;
update loan_landlord_payplan set modifyUser= modifyUser+2000000 where modifyUser<2000000;

update loan_landlord_rentconfig set createUser= createUser+2000000 where createUser<2000000;
update loan_landlord_rentconfig set modifyUser= modifyUser+2000000 where modifyUser<2000000;

update loan_landlord_repayplan set createUser= createUser+2000000 where createUser<2000000;
update loan_landlord_repayplan set modifyUser= modifyUser+2000000 where modifyUser<2000000;

update loan_landlord_type set createUser= createUser+2000000 where createUser<2000000;
update loan_landlord_type set modifyUser= modifyUser+2000000 where modifyUser<2000000;

update loan_renter_check set checker=checker+2000000 where checker<2000000;

update loan_renter_contract set updateBy=updateBy+2000000 where updateBy<2000000 and updateByType=5;
update loan_renter_contract set confirmer= confirmer+2000000 where confirmer<2000000;

update loan_renter_repayplan set updateBy=updateBy+2000000 where updateBy<2000000 and updateByType=5;
update mesg_batch set createBy=createBy=+2000000 where createBy<2000000 and createByType=5;

update mesg_batch set checkBy=checkBy+2000000 where checkBy<2000000 and checkByType=5;

update mesg_record set receiveBy= receiveBy+2000000 where receiveBy<2000000 and receiveByType=5;


update mesg_templet set createBy=createBy+2000000 where createBy<2000000 and createByType=5;
update mesg_templet set updateBy=updateBy+2000000 where updateBy<2000000 and updateByType=5;

update oder_remark set proposer= proposer+2000000 where proposer<2000000 and proposerType=5;
update oder_remark set toUser= toUser+2000000 where toUser<2000000 and toUserType=5;

update oder_signedorder set signedManagerId= signedManagerId+2000000 where signedManagerId<2000000 and signedManagerType=5;

update oder_surrenderapply set checkOutBy= checkOutBy+2000000 where checkOutBy<2000000 and surrOrigin=2;

update opex_userwarnrelation set sendTo= sendTo+2000000 where sendTo<2000000;
update opex_userwarnrelation set createBy= createBy +2000000 where createBy <2000000;
update opex_userwarnrelation set updateBy= updateBy+2000000 where updateBy<2000000;

update opex_warn set createBy= createBy +2000000 where createBy <2000000;
update opex_warn set updateBy= updateBy +2000000 where updateBy <2000000;

update opex_warnaction set createBy= createBy +2000000 where createBy <2000000;
update opex_warnaction set updateBy= updateBy +2000000 where updateBy <2000000;
update opex_warndetail set createBy= createBy +2000000 where createBy <2000000;
update opex_warndetail set updateBy= updateBy +2000000 where updateBy <2000000;

update opex_warntype set createBy= createBy +2000000 where createBy <2000000;
update opex_warntype set updateBy= updateBy +2000000 where updateBy <2000000;

update opex_warntyperelation set createBy= createBy +2000000 where createBy <2000000;
update opex_warntyperelation set updateBy= updateBy +2000000 where updateBy <2000000;

update orga_branch set createdBy= createdBy+2000000 where createdBy<2000000;

update orga_employeejobrelation set employeeId= employeeId+2000000 where employeeId<2000000;
update orga_employeejobrelation set createdBy= createdBy+2000000 where createdBy<2000000	;

update orga_job set createdBy= createdBy+2000000 where createdBy<2000000;

update perm_employee_role set employee_id= employee_id+2000000 where employee_id<2000000;

update perm_functioninfo set createdBy= createdBy+2000000 where createdBy<2000000;
update perm_functioninfo set updatedBy= updatedBy+2000000 where updatedBy<2000000;

update perm_menu_group set grantorId= grantorId+2000000 where grantorId<2000000 and grantorType=5;

update perm_role set createEmp= createEmp+2000000 where createEmp<2000000;

update supp_complain set updateBy= updateBy +2000000 where updateBy <2000000 and accuserOrigin=2;
update supp_complain set submitId= submitId +2000000 where submitId <2000000 and accuserOrigin=3;
update supp_complain set createBy= createBy +2000000 where createBy <2000000 and accuserOrigin=3;
update supp_complain set updateBy= updateBy +2000000 where updateBy <2000000 and accuserOrigin=3;

update supp_dialout_record set createBy=createBy+2000000 where createBy<2000000;

update supp_refund set approver= approver+2000000 where approver<2000000;
update supp_refund set createBy=createBy+2000000 where createBy<2000000 and createByType=5;
update supp_refund set updateBy=updateBy+2000000 where updateBy<2000000 and updateByType=5;


update supp_repair set submitId= submitId +2000000 where submitId <2000000 and repairOrigin=3;
update supp_repair set createBy= createBy +2000000 where createBy <2000000 and repairOrigin=3;
update supp_repair set updateBy= updateBy +2000000 where updateBy <2000000 and repairOrigin=3;
update supp_repair set updateBy= updateBy +2000000 where updateBy <2000000 and repairOrigin=2;


update user_bankcard set userType=0 where userType=2;
update user_bankcard set userType=4 where userType=1;

update user_employee set id = id+2000000 where id < 2000000;

update user_joint_agentaccount set employeeId = employeeId +2000000 where employeeId < 2000000;
update user_joint_agentaccount set createBy = createBy +2000000 where createBy < 2000000
 and createByType=5;

 update user_joint_agentaccount set updateBy = updateBy +2000000 where updateBy < 2000000
 and updateByType=5;
 
 
update user_landlord set salesManId = salesManId+2000000 where salesManId<2000000;

update user_rechangebalance set verifierBy = verifierBy+2000000 where verifierBy < 2000000;
update user_rechangebalance set createBy = createBy+2000000 where createBy < 2000000;
update user_rechangebalance set updateBy = updateBy+2000000 where updateBy < 2000000;

update user_special set updateBy = updateBy +2000000 where updateBy < 2000000
 and updateByType=5;
update user_special set createBy = createBy +2000000 where createBy < 2000000
 and createByType=5;
update user_special set userid = userid +2000000 where userid < 2000000
 and userType=5;

 
update user_terminal_loginlog set user_type = 0 where user_type=1;
update user_terminal_loginlog set user_type = 4 where user_type=2;


update user_user_memo set userId = userId+2000000 where userId<2000000 and userType=5;

update user_weixin_bind set userid = userid +2000000 where userid < 2000000
 and userType=5;

update user_zhima_score set updateBy = updateBy +2000000 where updateBy < 2000000
 and updateByType=5;
update user_zhima_score set createBy = createBy +2000000 where createBy < 2000000
 and createByType=5;
update user_zhima_score set userid = userid +2000000 where userid < 2000000
 and userType=5;

update user_zhima_score_his set createBy = createBy +2000000 where createBy < 2000000
 and createByType=5;
update user_zhima_score_his set userid = userid +2000000 where userid < 2000000
 and userType=5;
 

/*修正上次user_renter,user_landlord未导入的记录*/
REPLACE INTO user_info(
id, user_name, mobile, gender, nick_name, real_name, career, birthday, constellation, photo, card_type, card_id, nationality, email, regist_id, login_device, member_num, acc_id,
		addr, edu, create_ip, emergency, emerg_phone, create_time, create_by, update_time, update_by, done_code, STATUS, remark, phoneExt, landlordId, hobby, picGroupId,
		weixin,firstLoginTime,latestLoginTime 
 ) 
 SELECT (CASE  WHEN (id<3000000)  THEN id+3000000 ELSE  id END ) AS id, IFNULL(NAME,''), phone AS mobile, IFNULL(sex,1) AS gender, 
 NULL AS nickName, IFNULL(NAME,'') AS realName, NULL AS career, birthday, NULL AS constellation, photo AS avatarUrl, 0 AS cardType, IFNULL(identityid,'') AS idCard, 
 1 AS nationality, email, regId, loginDevice, memberNum, NULL AS acc_id,
		NULL AS communicationsAddress, NULL AS educationalBackground, '127.0.0.1' AS createIP, emergency, emergencyPhone AS emerg_phone, createTime, -1 AS create_by,  createTime, -1 AS update_by, 
		300000000+id AS soDoneCode, STATUS, remark, 
		NULL AS phoneExt, NULL AS landlordId, NULL AS hobby, NULL AS picGroupId,
		weixin,firstLoginTime, latestLoginTime  FROM user_landlord;


REPLACE INTO user_info(
id, user_name, mobile, gender, nick_name, real_name, career, birthday, constellation, photo, card_type, card_id, nationality, email, regist_id, login_device, member_num, acc_id,
		addr, edu, create_ip, emergency, emerg_phone, create_time, create_by, update_time, update_by, done_code, STATUS, remark, phoneExt, landlordId, hobby, picGroupId,
		weixin,firstLoginTime,latestLoginTime 
 ) 
 SELECT id, IFNULL(account,''), IFNULL(cellphone,'') AS mobile,IFNULL(sex,1) AS gender, nickName, IFNULL(realName,''), career, birthday, constellation, avatarUrl, IFNULL(cardType,''), IFNULL(idCard,''), (CASE WHEN nationality IS NOT NULL THEN nationality ELSE  1 END) AS nationality, email, regId, loginDevice, memberNum, NULL AS acc_id,
		communicationsAddress, educationalBackground, IFNULL(createIP,'127.0.0.1'), NULL AS emergency, NULL AS emerg_phone, createTime, -1 AS create_by,  createTime, -1 AS update_by, 
		200000000+id AS soDoneCode, STATUS, remark, 
		NULL AS phoneExt, NULL AS landlordId, hobby, NULL AS picGroupId,
		NULL AS weixin,NULL AS firstLoginTime,NULL AS latestLoginTime  FROM user_renter;
		


/*将user_employee记录插入user_info以及相关表*/

 INSERT INTO user_info(
id, user_name, mobile, gender, nick_name, real_name, career, birthday, constellation, photo, card_type, card_id, nationality, email, regist_id, login_device, member_num, acc_id,
		addr, edu, create_ip, emergency, emerg_phone, create_time, create_by, update_time, update_by, done_code, STATUS, remark, phoneExt, landlordId, hobby, picGroupId,
		weixin,firstLoginTime,latestLoginTime 
 ) 
 SELECT (CASE  WHEN (id<2000000)  THEN id+2000000 ELSE  id END ) AS id, num AS NAME, phone AS mobile, sex AS gender, 
 NULL AS nickName, NAME AS realName, NULL AS career, birthday, constellation, imgLocation AS avatarUrl, 0 AS cardType, IFNULL(idCard,'') , 
 1 AS nationality, email, NULL AS regId, NULL AS loginDevice, NULL AS memberNum, NULL AS acc_id,
		NULL AS communicationsAddress, NULL AS educationalBackground, '127.0.0.1' AS createIP, emergConName AS emergency, emergConPhone  AS emerg_phone, entryDate AS  createTime, -1 AS create_by,  entryDate AS updateTime, -1 AS update_by, 
		400000000+id AS soDoneCode, STATUS, remark, 
		phoneExt, NULL AS landlordId, NULL AS hobby, NULL AS picGroupId,
		NULL AS weixin,NULL AS firstLoginTime, NULL AS latestLoginTime  FROM user_employee;

INSERT INTO user_employee_info (
  soDoneCode, userId, englishName, province, hometown, entryDate, bankCode, bankCard, 
    bankDetail, createBy, createTime, updateBy, updateTime, fromExten
) SELECT  id+400000000 AS soDoneCode,  (CASE  WHEN (id<2000000)  THEN id+2000000 ELSE  id END ) AS userId, englishName, province, hometown, entryDate, bankName AS  bankCode, bankNum AS bankCard, 
    bankDetail, -1 AS createBy, entryDate AS  createTime, -1 AS updateBy, entryDate AS updateTime, fromExten FROM user_employee;

INSERT INTO user_password (soDoneCode, userId, PASSWORD, passType, createTime, createBy, updateTime, updateBy)
SELECT id+400000000 AS soDoneCode, (CASE  WHEN (id<2000000)  THEN id+2000000 ELSE  id END ) AS userId, PASSWORD,1 AS passType,entryDate as createTime,-1 AS createBy,entryDate as updateTime,-1 AS updateBy FROM user_employee  ;

INSERT INTO user_usertype(userId, userType, STATUS, createTime, createBy, updateTime, updateBy,soDoneCode)
SELECT (CASE  WHEN (id<2000000)  THEN id+2000000 ELSE  id END ) AS userId   ,5 AS userType,1 AS STATUS,entryDate AS createTime,-1 AS createBy,entryDate AS updateTime,-1 AS updateBy,id+400000000  AS soDoneCode FROM user_employee  ;
     
     
     
/*重命名原来的user_employee*/
rename table user_employee to user_employee_old;


/*新view 名称为user_employee*/
 CREATE  VIEW `user_employee` AS 
SELECT
  `user_info`.`id`                     AS `id`,
  `user_info`.`user_name`              AS `num`,
  `user_info`.`real_name`              AS `name`,
  `user_info`.`status`                 AS `STATUS`,
  `user_info`.`mobile`                 AS `phone`,
  `user_info`.`email`                  AS `email`,
  `user_employee_info`.`englishName`   AS `englishName`,
  `user_info`.`gender`                 AS `sex`,
  `user_info`.`birthday`               AS `birthday`,
  `user_employee_info`.`province`      AS `province`,
  `user_employee_info`.`hometown`      AS `hometown`,
  `user_info`.`card_id`                AS `validDoc`,
  `user_info`.`emergency`              AS `emergConName`,
  `user_info`.`emerg_phone`            AS `emergConPhone`,
  `user_info`.`constellation`          AS `constellation`,
  `user_info`.`card_id`                AS `idCard`,
  `user_info`.`remark`                 AS `remark`,
  `user_info`.`latestLoginTime`        AS `lastvisitDate`,
  `user_info`.`status`                 AS `valid`,
  `user_employee_info`.`entryDate`     AS `entryDate`,
  `user_info`.`photo`                  AS `imgLocation`,
  `user_employee_info`.`bankCode`      AS `bankName`,
  `user_employee_info`.`bankCard`       AS `bankNum`,
  `user_employee_info`.`bankDetail`    AS `bankDetail`,
  `user_info`.`phoneExt`               AS `phoneNum`,
  `user_info`.`phoneExt`               AS `phoneExt`,
  `user_password`.`password`                AS `password`,
  `user_employee_info`.`fromExten`     AS `fromExten`,
  0 as loginCount 
FROM  `user_info`
    JOIN `user_employee_info`
      ON `user_info`.`id` = `user_employee_info`.`userId` 
   JOIN `user_password`
     ON  `user_info`.`id` = `user_password`.`userId` ;
     