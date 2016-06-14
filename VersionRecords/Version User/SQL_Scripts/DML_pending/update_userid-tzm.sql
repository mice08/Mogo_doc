/*更新所有user_landlord,user_renter,user_employee中userId重叠的数据*/
use mogoroomdb;

/*更新后来添加的字段数据*/

UPDATE user_renter_info a,user_renter b SET a.isverified = b.isverified WHERE a.userid=b.id ; 

UPDATE user_info a,user_renter b SET a.nationality=ifnull(b.nationality,1),a.`birthday`=b.`birthday`,a.`real_name`=ifnull(b.`realName`,''),a.`user_name`=ifnull(b.`account`,''),a.`gender`=ifnull(b.`sex`,1),a.`nick_name`=b.`nickName` WHERE a.id =b.id;


UPDATE user_landlord_info a,user_landlord b SET a.`editPwdNum`=b.`editPwdNum`,a.`signCount`=b.`signCount` WHERE (a.`userId`=b.`id` AND b.`id`>3000000) OR (a.`userId`=b.`id`+3000000 AND b.`id`<3000000);

UPDATE user_info a,user_landlord b SET a.`phoneExt` =b.`phoneExt` ,a.`addr`=b.`address`,a.`create_by`=b.`createby` WHERE (a.`id`=b.`id` AND b.`id`>300000) OR (a.`id`=b.`id`+3000000 AND b.`id`<3000000);

UPDATE user_password a,user_landlord b SET a.`password`=b.`password` WHERE (a.`userId`=b.`id` AND b.`id`>300000) OR (a.`userId`=b.`id`+3000000 AND b.`id`<3000000);

UPDATE user_password a,user_renter b SET a.`password`=b.`password` WHERE a.`userId`=b.`id` ;


/*账单线下支付表*/
update bill_exemptinfo set createBy= createBy+3000000 where createBy<3000000 and createByType=0;

/*老系统贷款表*/
update bill_loan set loanlandlordId= loanlandlordId +3000000 where loanlandlordId <3000000;

/*支付记录表，需关注*/
update bill_paymentrecord set userId = userId+3000000 where userId<3000000 and userType=0;

/*业务账单表，重点关注*/
update bill_salebill set landlordId = landlordId+3000000 where landlordId<3000000 ;

/*业务账单应收表，重点关注*/
update bill_saleshouldaccount set landlordId = landlordId+3000000 where landlordId<3000000;

/*合同条款表，重点关注*/
update cntr_contract_clause set landlordId = landlordId+3000000  where landlordId<3000000;
update cntr_contract_clause set createBy = createBy+3000000  where createByType=0 and createBy<3000000;
update cntr_contract_clause set updateBy = updateBy+3000000  where updateByType=0 and updateBy<3000000;

/*合同模板表*/
update cntr_contract_templet set landlordId = landlordId+3000000  where landlordId<3000000;

update cntr_contract_templet set createBy = createBy+3000000  where createByType=0 and createBy<3000000;
update cntr_contract_templet set updateBy = updateBy+3000000  where updateByType=0 and updateBy<3000000;

update cntr_contract_templet_clause_rel set createBy = createBy+3000000  where createByType=0 and createBy<3000000;
update cntr_contract_templet_clause_rel set updateBy = updateBy+3000000  where updateByType=0 and updateBy<3000000;

/*租房合同表，重点关注*/
update cntr_salecontract set landlordId = landlordId+3000000  where landlordId<3000000;

/*租房修改记录表*/
update  cntr_salecontract_change set createBy = createBy+3000000  where createBy<3000000  and createByType=0;

update  cntr_salecontract_change set updateBy = updateBy+3000000  where updateBy<3000000  and  updateByType=0;

/*租房下载记录表*/
update  cntr_salecontract_downloadlogs set downloadBy = downloadBy +3000000  where downloadBy <3000000  and  downloadByType =0;

/*销售合同历史表*/
update  cntr_salecontract_version set landlordId = landlordId +3000000  where landlordId <3000000;

/*合同用户关系表*/
update  cntr_salecontractuserrel set userId = userId+3000000  where userId <3000000 and userType=0;

/*业务记录表*/
update  comm_business_record set landlordId = landlordId +3000000  where landlordId <3000000;

update  comm_business_record set operator = operator +3000000  where operator <3000000 and operatorType=0;


/*操走日志记录表*/
update  comm_operation_log set operator = operator +3000000  where operator<3000000 and operatorType=0;

/*公用图片表*/
update  comm_picture set create_by = create_by +3000000  where create_by<3000000 and create_by_type=0;

update  comm_picture set updateBy = updateBy +3000000  where updateBy<3000000 and updateByType=0;

/*公用图片群组表*/
update  comm_picture_group set createBy = createBy +3000000  where createBy<3000000 and createByType=0;

/*个人建议表*/
update comm_suggestion set proposer=proposer+3000000 where type=2 and proposer<3000000;

/*小区表*/
update flat_community set createBy = createBy+3000000 where createBy<3000000 and createByType=0;
update flat_community set updateBy = updateBy+3000000 where updateBy<3000000 and updateByType=0;

/*小区历史表*/
update flat_community_his set createBy = createBy+3000000 where createBy<3000000 and createByType=0;
update flat_community_his set updateBy = updateBy+3000000 where updateBy<3000000 and updateByType=0;


/*小区特性表，需关注*/
update flat_community_property set landlordId = landlordId+3000000 where landlordId<3000000;
update flat_community_property set createBy = createBy+3000000 where createBy<3000000 and createByType=0;
update flat_community_property set updateBy = updateBy+3000000 where updateBy<3000000 and updateByType=0;

/*公寓表，重点关注*/
update flat_flats set landlordId = landlordId+3000000 where landlordId<3000000;
update flat_flats set createBy = createBy +3000000 where createBy <3000000 and createChannel in (4,5);
update flat_flats set updateBy = updateBy +3000000 where updateBy <3000000 and updateChannel in (4,5);

update flat_flats_his set landlordId = landlordId+3000000 where landlordId<3000000;
update flat_flats_his set createBy = createBy +3000000 where createBy <3000000 and createChannel in (4,5);
update flat_flats_his set updateBy = updateBy +3000000 where updateBy <3000000 and updateChannel in (4,5);

/*公寓类型表，重点关注*/
update flat_flats_prototype set landlordId = landlordId+3000000 where landlordId<3000000;
update flat_flats_prototype set createBy = createBy +3000000 where createBy <3000000 and createChannel in (4,5);
update flat_flats_prototype set updateBy = updateBy +3000000 where updateBy <3000000 and updateChannel in (4,5);

update flat_flats_prototype_his set landlordId = landlordId+3000000 where landlordId<3000000;
update flat_flats_prototype_his set createBy = createBy +3000000 where createBy <3000000 and createChannel in (4,5);
update flat_flats_prototype_his set updateBy = updateBy +3000000 where updateBy <3000000 and updateChannel in (4,5);

/*公寓标签表*/
update flat_flatstag set landlordId = landlordId +3000000 where landlordId <3000000;
update flat_flatstag set createBy = createBy +3000000 where createBy <3000000;
update flat_flatstag set updateBy = updateBy +3000000 where updateBy <3000000;

/*公寓标签关系表*/
update flat_flatstag_relation set createBy = createBy +3000000 where createBy <3000000 ;
update flat_flatstag_relation set updateBy = updateBy +3000000 where updateBy <3000000 ;


/*赶集房东表*/
update flat_joint_landlord set landlordId = landlordId +3000000 where landlordId <3000000 ;




/*房价历史表*/
update flat_price_his set createBy=createBy+3000000 where createByType=0 and createBy<3000000;


/*房间表，重点关注*/
update flat_room set createBy = createBy +3000000 where createBy <3000000  and createChannel in(4,5); /*--数据创建来源(1:租客APP,2:BS后台,3:官网,4:房东APP,5:房东PC)*/

update flat_room set updateBy = updateBy +3000000 where updateBy <3000000  and updateChannel in(4,5); /*--数据创建来源(1:租客APP,2:BS后台,3:官网,4:房东APP,5:房东PC)*/

update flat_room_his set createBy = createBy +3000000 where createBy <3000000  and createChannel in(4,5); /*--数据创建来源(1:租客APP,2:BS后台,3:官网,4:房东APP,5:房东PC)*/

update flat_room_his set updateBy = updateBy +3000000 where updateBy <3000000  and updateChannel in(4,5); /*--数据创建来源(1:租客APP,2:BS后台,3:官网,4:房东APP,5:房东PC)*/


/*房源评分表*/
update flat_room_grade set createBy = createBy +3000000 where createBy <3000000  and createType=0;

update flat_room_grade set updateBy = updateBy +3000000 where updateBy <3000000  and updateType=0;

/*房间图片表*/
update flat_room_picture set uploadUserId = uploadUserId +3000000 where channel in(4,5);

/*房间类型表*/
update flat_room_prototype set createBy = createBy +3000000 where createBy <3000000  and createChannel in(4,5); /*--数据创建来源(1:租客APP,2:BS后台,3:官网,4:房东APP,5:房东PC)*/

update flat_room_prototype set updateBy = updateBy +3000000 where updateBy <3000000  and updateChannel in(4,5); /*--数据创建来源(1:租客APP,2:BS后台,3:官网,4:房东APP,5:房东PC)*/

update flat_room_prototype_his set createBy = createBy +3000000 where createBy <3000000  and createChannel in(4,5); /*--数据创建来源(1:租客APP,2:BS后台,3:官网,4:房东APP,5:房东PC)*/

update flat_room_prototype_his set updateBy = updateBy +3000000 where updateBy <3000000  and updateChannel in(4,5); /*--数据创建来源(1:租客APP,2:BS后台,3:官网,4:房东APP,5:房东PC)*/


/*房间评分表*/
update flat_room_score set updateBy = updateBy +3000000 where updateBy <3000000  and updateByType=0;

update flat_room_score set createBy = createBy +3000000 where createBy <3000000  and createByType=0;




/*房间联系人关联表*/
update flat_room_user_relation set userId=3000000+userId where userId<3000000 and userSource=1;

/*
--update flat_roombaseprice set createBy = createBy +3000000 where createBy <3000000  and createByType=0;

---update flat_roombaseprice set deleteBy = deleteBy +3000000 where deleteBy <3000000  and deleteByType=0;
*/

/*房间价格关联表*/
update flat_roomprice set createBy = createBy +3000000 where createBy <3000000  and createByType=0;

update flat_roomprice set deleteBy = deleteBy +3000000 where deleteBy <3000000  and deleteByType=0;

/*公寓标签表*/
update flat_tag set userId = userId +3000000 where userId <3000000  and userType=0;

/*用户投诉表*/
update supp_complain set landlordId = landlordId +3000000 where landlordId<3000000;

/*付款计划表,关注*/
update host_acct_busi_rec set landlord_id = landlord_id+3000000 where landlord_id<3000000;

/*业主和房源(公寓)的关系表*/
update host_flats_relation set landlord_id = landlord_id+3000000 where landlord_id<3000000;

/*房东和小区的关系表*/
update landlord_community_relation set landlordid = landlordid+3000000 where landlordid<3000000;

update landlord_community_relation set createBy = createBy+3000000 where  createBy<3000000 and createByType=0;


/*房东买回表*/
update loan_landlord_buyback set landlordId= landlordId+3000000 where landlordId<3000000;
	
update loan_landlord_contract set landlordId= landlordId+3000000 where landlordId<3000000;

/*房东信用表*/
update loan_landlord_credit set landlordId= landlordId+3000000 where landlordId<3000000;

update loan_landlord_creditlog set landlordId= landlordId+3000000 where landlordId<3000000;


/*房东租金宝贷款费率表*/
update loan_landlord_fee set landlordId= landlordId+3000000 where landlordId<3000000;

/*房东贷款管理*/
update loan_landlord_mgmt set landlordId= landlordId+3000000 where landlordId<3000000;

/*租客贷款表*/
update loan_renter_contract set updateBy=updateBy+3000000 where updateBy<3000000 and updateByType=0;

update loan_renter_contract set landlordId= landlordId+3000000 where landlordId<3000000;

update loan_renter_contract_his set landlordId= landlordId+3000000 where landlordId<3000000;

/*租客贷款信息表*/
update loan_renter_info set landlordId= landlordId+3000000 where landlordId<3000000;

/*租客还款表*/
update loan_renter_repayplan set updateBy=updateBy+3000000 where updateBy<3000000 and updateByType=0;

/*消息模块表*/
update mesg_batch set createBy=createBy+3000000 where createBy<3000000 and createByType=0;

update mesg_batch set checkBy=checkBy+3000000 where checkBy<3000000 and checkByType=0;

update mesg_record set receiveBy= receiveBy+3000000 where receiveBy<3000000 and receiveByType=0;

update mesg_templet set createBy=createBy+3000000 where createBy<3000000 and createByType=0;

update mesg_templet set updateBy=updateBy+3000000 where updateBy<3000000 and updateByType=0;

update mesg_to_partner set sendTo=sendTo+3000000 where sendTo<3000000;


/*预订单，需关注*/
update oder_bookorder set landlordId= landlordId+3000000 where landlordId<3000000;

/*业务订单表,重点关注*/
update oder_businessorder set userId=userId+3000000 where userId<3000000 and userType=0;

/*拒绝预定记录*/
update oder_refuseorderrecord set landlordId= landlordId+3000000 where landlordId<3000000;
update oder_refund_approval set landlordId= landlordId+3000000 where landlordId<3000000;

/*意见记录表*/
UPDATE oder_remark SET proposer= proposer+3000000 WHERE proposer<3000000 AND proposerType=0;

UPDATE oder_remark SET toUser= toUser+3000000 WHERE toUser<3000000 AND toUserType=0; 

/*预约单,需关注*/
update oder_reservationorder set landlordId= landlordId+3000000 where landlordId<3000000;

/*签约单，需关注*/
update oder_signedorder set landlordId= landlordId+3000000 where landlordId<3000000;

/*退房申请*/
update oder_surrenderapply set landlordId= landlordId+3000000 where landlordId<3000000;

update oder_surrenderapply set checkOutBy= checkOutBy+3000000 where checkOutBy<3000000 and surrOrigin=5;

/*
--update opex_terminal_loginlog set userId=3000000+userId where userId<3000000;
*/

/*投诉表*/
update supp_complain set landlordId= landlordId+3000000 where landlordId<3000000;

update supp_complain set submitId= submitId +3000000 where submitId <3000000 and accuserOrigin=2;

update supp_complain set createBy= createBy +3000000 where createBy <3000000 and accuserOrigin=2;

/*职业房东退款记录表*/
update supp_landlordrefundrecord set landlordId=landlordId+3000000 where landlordId<3000000;

/*
--update supp_dialout_record set createBy=createBy+3000000 where createBy<3000000 and createByType=0;

--update supp_refund set createBy=createBy+3000000 where createBy<3000000 and createByType=0;

--update supp_refund set updateBy=updateBy+3000000 where updateBy<3000000 and updateByType=0;
*/
/*维修表*/
update supp_repair set landlordId= landlordId+3000000 where landlordId<3000000;
update supp_repair set submitId= submitId +3000000 where submitId <3000000 and repairOrigin=2;
update supp_repair set createBy= createBy +3000000 where createBy <3000000 and repairOrigin=2;


update supp_utilitybill set landlordId = landlordId+3000000 where landlordId<3000000;

/*用户映射表*/
update user_account_mapping set userId= userId+3000000 where userId<3000000 and userType=0;

update acct.acct_account set userId= userId+3000000 where userId<3000000 and userType=0;

/*银行卡表*/
update user_bankcard set userId= userId+3000000 where userType=0 and userId<3000000;
update user_bankcard_his set userId= userId+3000000 where userType=0 and userId<3000000;


update user_businessaccount set landlordId= landlordId+3000000 where landlordId<3000000;


/*用户信息表*/
update user_info set landlordid=landlordid+3000000 where landlordid<3000000 and landlordid>0;
update user_info_his set landlordid=landlordid+3000000 where landlordid<3000000 and landlordid>0;

/*合作网站经纪人账号表*/
update user_joint_agentaccount set createBy = createBy +3000000 where createBy < 3000000
 and createByType=0;
 
update user_joint_agentaccount set updateBy = updateBy +3000000 where updateBy < 3000000
 and updateByType=0;

/*房东表*/
update user_landlord set id = id+3000000 where id < 3000000;
update user_landlord_his set landlordId = landlordId+3000000 where landlordId < 3000000;

update user_landlord_info set salesManId = salesManId+2000000 where salesManId < 2000000;
update user_landlord_info_his set salesManId = salesManId+2000000 where salesManId < 2000000;

/*房东账单类型表*/
update user_landlord_billdtltype  set landlordId=landlordId+3000000 where landlordId < 3000000 and landlordId!=0;

/*子帐号表*/
update user_landlord_childacc_rel  set landlordId=landlordId+3000000 where landlordId < 3000000;

/*登录日志表*/
update user_loginlog set loginType=0 where loginType=2;

update user_loginlog set loginType=4 where loginType=1;

update user_loginlog set userId = userId+3000000 where userId < 3000000 and loginType=0;


/*余额变化表*/
update user_rechangebalance set landlordId = landlordId+3000000 where landlordId < 3000000;

/*特别用户表*/
update user_special set updateBy = updateBy +3000000 where updateBy < 3000000
 and updateByType=0;


update user_special set createBy = createBy +3000000 where createBy < 3000000
 and createByType=0;


update user_special set userid = userid +3000000 where userid < 3000000
 and userType=0;


/*终端登录信息*/
update user_terminal_loginlog set user_id = user_id +3000000 where user_id < 3000000
 and user_Type=1;
 
UPDATE user_terminal_loginlog SET user_id = user_id +3000000 WHERE user_id < 3000000 AND user_Type=0;

/*用户备忘录*/
update user_user_memo set userId = userId+3000000 where userId<3000000 and userType=0;

/*微信蘑菇账号绑定表*/
update user_weixin_bind set userid = userid +3000000 where userid < 3000000
 and userType=0;

/*芝麻信用相关*/
update user_zhima_score set updateBy = updateBy +3000000 where updateBy < 3000000
 and updateByType=0;

update user_zhima_score set createBy = createBy +3000000 where createBy < 3000000
 and createByType=0;

update user_zhima_score set userid = userid +3000000 where userid < 3000000
 and userType=0;


update user_zhima_score_his set createBy = createBy +3000000 where createBy < 3000000
 and createByType=0;


update user_zhima_score_his set userid = userid +3000000 where userid < 3000000
 and userType=0;     
 
 
update acct.acct_withdrawschedule set userid = userid +3000000 where userid < 3000000 and userType in (0,2);
 
 
 rename table user_landlord to user_landlord_old;
 
 rename table user_renter to user_renter_old;
 
 
 CREATE VIEW user_landlord AS                                
                                                              
 SELECT                                                        
   `user_info`.`id`                       AS `id`,             
   `user_info`.`user_name`                AS `NAME`,           
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
   `user_info`.`status`                   AS `STATUS`,         
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
     JOIN `user_password`)                                     
 WHERE ((`user_info`.`id` = `user_landlord_info`.`userId`)     
        AND (`user_info`.`id` = `user_password`.`userId`));       
        
        
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
       `user_info`.`status`               AS `STATUS`,               
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
          ON  `user_info`.`id` = `user_password`.`userId` ;          