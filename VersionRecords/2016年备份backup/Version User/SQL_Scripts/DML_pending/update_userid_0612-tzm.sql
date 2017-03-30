/*更新所有user_landlord,user_renter,user_employee中userId重叠的数据*/
use mogoroomdb;

/*更新后来添加的字段数据*/

UPDATE user_usertype a,user_info b SET a.status=b.status WHERE a.userid = b.id and a.userType in (0,4,5);

 
  DROP VIEW IF EXISTS user_landlord;
 
 CREATE VIEW user_landlord AS                                
                                                              
 SELECT                                                        
   `user_info`.`id`                       AS `id`,             
   `user_info`.`real_name`                AS `name`,           
   `user_info`.`gender`                   AS `sex`,            
   `user_info`.`card_id`                  AS `identityId`,     
   `user_info`.`mobile`                   AS `phone`,          
   `user_info`.`photo`                    AS `photo`,          
   `user_landlord_info`.`contactPhone`    AS `contactPhone`,   
   `user_info`.`weixin`                   AS `weixin`,         
   `user_info`.`email`                    AS `email`,          
   `user_info`.`birthday`                 AS `birthday`,       
   `user_info`.`addr`                     AS `address`,        
   `user_info`.`emergency`                AS `emergency`,      
   `user_info`.`emerg_phone`              AS `emergencyPhone`, 
   `user_info`.`phoneExt`                 AS `phoneNum`,       
   `user_landlord_info`.`landlordType`    AS `userType`,       
   `user_landlord_info`.`contractDate`    AS `contractDate`,   
   `user_landlord_info`.`salesmanId`      AS `salesmanId`,     
   `user_info`.`update_time`              AS `updatetime`,     
   `user_info`.`create_time`              AS `createtime`,     
   `user_info`.`id`                       AS `createBy`,       
   `user_info`.`remark`                   AS `remark`,         
   `user_usertype`.`status`                   AS `status`,         
   `user_landlord_info`.`accountNum`      AS `accountNum`,     
   `user_info`.`member_num`               AS `memberNum`,      
   `user_landlord_info`.`editPwdNum`      AS `editPwdNum`,     
   `user_info`.`regist_id`                AS `regId`,          
   `user_landlord_info`.`isSpecial`       AS `isSpecial`,      
   `user_info`.`login_device`             AS `loginDevice`,    
   `user_info`.`firstLoginTime`           AS `firstLoginTime`, 
   `user_info`.`latestLoginTime`          AS `latestLoginTime`,
   `user_info`.`phoneExt`                 AS `phoneExt`,       
   `user_landlord_info`.`brandName`       AS `brandName`,      
   `user_landlord_info`.`isVerified`           AS `label`,     
   `user_landlord_info`.`legalPerson`     AS `legalPerson`,    
   `user_password`.`password`             AS `password`,       
   user_landlord_info.`signCount`         AS signCount ,
   user_landlord_info.applyCityId AS applyCityId,
   user_landlord_info.acctType AS acctType,
   user_landlord_info.creditCode as creditCode         
 FROM ((`user_info`                                            
     JOIN `user_landlord_info`)                                
     JOIN `user_password`
     join user_usertype)                                     
 WHERE ((`user_info`.`id` = `user_landlord_info`.`userId`)     
        AND (`user_info`.`id` = `user_password`.`userId`) and user_info.id = user_usertype.userId and user_usertype.usertype=0 );       
        
       
 DROP VIEW IF EXISTS user_renter;
  CREATE VIEW user_renter AS   
     SELECT                                                          
       `user_info`.`id`                   AS `id`,                      
       `user_info`.`user_name`            AS `account`,                 
       `user_password`.`password`         AS `password`,                
       `user_info`.`mobile`               AS `cellphone`,               
       `user_info`.`gender`               AS `sex`,                     
       `user_info`.`nick_name`            AS `nickName`,                
       `user_info`.`real_name`            AS `realName`,             
       `user_info`.`career`               AS `career`,               
       `user_renter_info`.`companyName`   AS `companyName`,          
       `user_info`.`birthday`             AS `birthday`,             
       `user_info`.`constellation`        AS `constellation`,        
       `user_renter_info`.`hobby`         AS `hobby`,                
       `user_info`.`card_id`              AS `idCard`,               
       `user_info`.`card_type`            AS `cardType`,             
       `user_info`.`nationality`          AS `nationality`,          
       `user_info`.`email`                AS `email`,                
       `user_info`.`member_num`           AS `memberNum`,            
       `user_renter_info`.`accountNum`    AS `accountNum`,           
       `user_info`.`create_time`          AS `createTime`,           
       `user_info`.`create_ip`            AS `createIP`,             
       `user_usertype`.`status`               AS `STATUS`,               
       `user_info`.`regist_id`            AS `regId`,                
       `user_info`.`login_device`         AS `loginDevice`,          
       `user_info`.`addr`                 AS `communicationsAddress`,
       `user_info`.`edu`                  AS `educationalBackground`,
       `user_renter_info`.`oldLiveStatus` AS `oldLiveStatus`,        
       `user_renter_info`.`isBlack`       AS `isBlack`,              
       `user_renter_info`.`blackRemark`   AS `blackRemark`,          
       `user_info`.`remark`               AS `remark`,               
       `user_info`.`photo`                AS `avatarUrl`,            
       `user_renter_info`.`isVerified`    AS `isVerified`,           
       user_info.`regChannel`             AS regChannel,             
       user_info.`regChannelDtl`          AS regChannelDtl,          
       user_info.`regMobileCity`          AS regMobileCity           
     FROM `user_info`                                                
         JOIN `user_renter_info`                                     
           ON `user_info`.`id` = `user_renter_info`.`userId`         
        JOIN `user_password`                                         
          ON  `user_info`.`id` = `user_password`.`userId` 
         join user_usertype
         	 on user_info.id = user_usertype.userId and user_usertype.usertype=4;   
         	 
         	 
  DROP VIEW IF EXISTS user_employee;  	 
 CREATE  VIEW `user_employee` AS 
SELECT
  `user_info`.`id`                     AS `id`,
  `user_info`.`user_name`              AS `num`,
  `user_info`.`real_name`              AS `name`,
  `user_info`.`status`                 AS `status`,
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
     ON  `user_info`.`id` = `user_password`.`userId` 
   join user_usertype 
   	 on user_info.id = user_usertype.userId and user_usertype.usertype=5;    