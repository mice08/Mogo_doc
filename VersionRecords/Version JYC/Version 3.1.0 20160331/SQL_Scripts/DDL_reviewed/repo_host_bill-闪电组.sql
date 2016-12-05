/*  Database name `mogoroomdb` ，repo_host_bill视图修改*/
use mogoroomdb;

DROP VIEW `repo_host_bill`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW  `repo_host_bill` AS SELECT
	`hostrec`.`id` AS `hostRecId`,
	`userinfo`.`id` AS `userId`,
	`hostrec`.`flat_id` AS `flatId`,
	`hostrel`.`pay_type` AS `payType`,
	`hostrec`.`pay_date` AS `payDate`,
	`hostrec`.`real_pay_date` AS `realPayDate`,
	`hostrec`.`has_paid` AS `payStatus`,
	`userinfo`.`real_name` AS `userName`,
	`userinfo`.`mobile` AS `userPhone`,
	`community`.`name` AS `communityName`,
	`flat`.`roomNum` AS `roomNum`,
	`flat`.`flatsNum` AS `flatsNum`,
	`flat`.`building` AS `building`,
	`citydistrict`.`id` AS `cityDistrictId`,
	`citydistrict`.`name` AS `cityDistrictName`,
	`hostrec`.`landlord_id` AS `landlordId`,
	`hostrec`.`pay_money` AS `payMoney`,
	`citydistrict`.`id` AS `districtId`,
	`flat`.`unit` AS `unit`
FROM
	(
		(
			(
				(
					(
						`host_acct_busi_rec` `hostrec`
						JOIN `host_flats_relation` `hostrel`
					)
					JOIN `user_info` `userinfo`
				)
				JOIN `flat_flats` `flat`
			)
			JOIN `flat_community` `community`
		)
		JOIN `city_district` `citydistrict`
	)
WHERE
	(
		(
			`hostrec`.`hostFlatRelId` = `hostrel`.`id`
		)
		AND (
			`userinfo`.`id` = `hostrec`.`host_id`
		)
		AND (
			`flat`.`id` = `hostrec`.`flat_id`
		)
		AND (
			`community`.`id` = `flat`.`communityId`
		)
		AND (
			`flat`.`districtId` = `citydistrict`.`id`
		)
	)
