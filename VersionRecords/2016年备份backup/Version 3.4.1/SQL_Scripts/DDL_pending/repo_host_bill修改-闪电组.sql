DELIMITER $$
/**
 * 视图新增返回字段，
 * 1、付款计划表状态字段；
 * 2、公寓单元号字段；
 */
CREATE OR REPLACE VIEW `repo_host_bill` AS 
SELECT
  `hostrec`.`id`            AS `hostRecId`,
  `userinfo`.`id`           AS `userId`,
  `hostrec`.`flat_id`       AS `flatId`,
  `hostrel`.`pay_type`      AS `payType`,
  `hostrec`.`STATUS`        AS `status`,
  `hostrec`.`pay_date`      AS `payDate`,
  `hostrec`.`real_pay_date` AS `realPayDate`,
  `hostrec`.`has_paid`      AS `payStatus`,
  `userinfo`.`real_name`    AS `userName`,
  `userinfo`.`mobile`       AS `userPhone`,
  `community`.`name`        AS `communityName`,
  `flat`.`roomNum`          AS `roomNum`,
  `flat`.`flatsNum`         AS `flatsNum`,
  `flat`.`building`         AS `building`,
  `citydistrict`.`id`       AS `cityDistrictId`,
  `citydistrict`.`name`     AS `cityDistrictName`,
  `hostrec`.`landlord_id`   AS `landlordId`,
  `hostrec`.`pay_money`     AS `payMoney`,
  `citydistrict`.`id`       AS `districtId`,
  `flat`.`unit`             AS `unit`
FROM `host_acct_busi_rec` `hostrec`
       JOIN `host_flats_relation` `hostrel` ON `hostrec`.`hostFlatRelId` = `hostrel`.`id` AND hostrel.status = 1
      JOIN `user_info` `userinfo` ON `userinfo`.`id` = `hostrec`.`host_id`
     JOIN `flat_flats` `flat` ON `flat`.`id` = `hostrec`.`flat_id`
    JOIN `flat_community` `community` ON `community`.`id` = `flat`.`communityId`
   JOIN `city_district` `citydistrict` ON `flat`.`districtId` = `citydistrict`.`id`
$$
DELIMITER ;