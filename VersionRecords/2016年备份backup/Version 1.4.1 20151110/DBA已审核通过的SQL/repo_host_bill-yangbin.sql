DROP VIEW `repo_host_bill`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `repo_host_bill` AS select `hostrec`.`id` AS `hostRecId`,`userinfo`.`id` AS `userId`,`hostrec`.`flat_id` AS `flatId`,`hostrel`.`pay_type` AS 
`payType`,`hostrec`.`pay_date` AS `payDate`,`hostrec`.`real_pay_date` AS `realPayDate`,`hostrec`.`has_paid` AS `payStatus`,`userinfo`.`real_name` AS `userName`,`userinfo`.`mobile` AS `userPhone`,`community`.`name` AS 
`communityName`,`flat`.`roomNum` AS `roomNum`,`flat`.`flatsNum` AS `flatsNum`,`flat`.`building` AS `building`,`citydistrict`.`id` AS `cityDistrictId`,`citydistrict`.`name` AS `cityDistrictName`,`hostrec`.`landlord_id` AS 
`landlordId`,`hostrec`.`pay_money` AS `payMoney`,`citydistrict`.`id` AS `districtId`,`flat`.`unit` AS `unit` from (((((`host_acct_busi_rec` `hostrec` join `host_flats_relation` `hostrel`) join `user_info` `userinfo`) join `flat_flats` `flat`) join 
`flat_community` `community`) join `city_district` `citydistrict`) where ((`hostrec`.`flat_id` = `hostrel`.`flat_id`) and (`hostrec`.`host_id` = `hostrel`.`host_id`) and (`hostrec`.`landlord_id` = `hostrel`.`landlord_id`) and 
(`userinfo`.`id` = `hostrec`.`host_id`) and (`flat`.`id` = `hostrec`.`flat_id`) and (`community`.`id` = `flat`.`communityId`) and (`flat`.`districtId` = `citydistrict`.`id`));
