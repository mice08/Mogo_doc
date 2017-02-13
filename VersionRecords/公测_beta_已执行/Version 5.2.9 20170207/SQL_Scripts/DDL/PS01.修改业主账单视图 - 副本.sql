use mogoroomdb;
/*业主账单视图flat_community和添加status状态查询条件*/

CREATE OR REPLACE VIEW `repo_host_bill` AS 
select  `hostrec`.`id` AS `hostRecId`,  `userinfo`.`id` AS `userId`,  `hostrec`.`flat_id` AS `flatId`,
`hostrel`.`pay_type` AS `payType`,  `hostrel`.`STATUS` AS `status`,  `hostrec`.`pay_date` AS `payDate`,
`hostrec`.`real_pay_date` AS `realPayDate`,  `hostrec`.`has_paid` AS `payStatus`,  `userinfo`.`real_name` AS `userName`,
`userinfo`.`mobile` AS `userPhone`,  `community`.`name` AS `communityName`,  `flat`.`roomNum` AS `roomNum`, 
`flat`.`flatsNum` AS `flatsNum`,  `flat`.`building` AS `building`,  `citydistrict`.`id` AS `cityDistrictId`,
`citydistrict`.`name` AS `cityDistrictName`,  `hostrec`.`landlord_id` AS `landlordId`,  `hostrec`.`pay_money` AS `payMoney`,
`citydistrict`.`id` AS `districtId`,  `flat`.`unit` AS `unit` 
from (
    (
        (
            (
                (`host_acct_busi_rec` `hostrec`  join `host_flats_relation` `hostrel`)  
                join `user_info` `userinfo`
            )   join `flat_flats` `flat`
        )  
                join `flat_community` `community`
    )  join `city_district` `citydistrict`) 
where ((`hostrec`.`hostFlatRelId` = `hostrel`.`id`)  
    and (`userinfo`.`id` = `hostrec`.`host_id`)  
    and (`flat`.`id` = `hostrec`.`flat_id`)  
    and (`community`.`id` = `flat`.`communityId`)  
    and (`flat`.`districtId` = `citydistrict`.`id`)
    and `community`.status=1
    and `flat`.status=1)
