/*  Database name `mogoroomdb`  

	账务需求变更，视图需要添加新的字段
 */

use mogoroomdb

CREATE or REPLACE  VIEW `repo_renter_bill` AS
SELECT
	`salebill`.`id` AS `saleBillId`,
	`salebill`.`userId` AS `renterId`,
	`salebill`.`landlordId` AS `landlordId`,
	`flat`.`id` AS `flatId`,
	`salebill`.`billType` AS `billType`,
	`salebill`.`amount` AS `amount`,
	`salebill`.`billDate` AS `billDate`,
    `salebill`.`unpayAmount` AS `unpayAmount`, --未支付金额
	`salebill`.`dueDate` AS `dueDate`,
	`salebill`.`payTime` AS `payTime`,
	`salebill`.`payStatus` AS `payStatus`,
	`salebill`.`serialNum` AS `serialNum`,
	`salebill`.`createTime` AS `createTime`,
	`salebill`.`startDate` AS `startDate`,
	`salebill`.`endDate` AS `endDate`,
	`salebill`.`signedOrderId` AS `signedOrderId`,
	`salebill`.`periodStage` AS `periodStage`,
	`salebill`.`periodYear` AS `periodYear`,
	`flat`.`districtId` AS `districtId`,
	`flat`.`flatsNum` AS `flatsNum`,
	`flat`.`roomNum` AS `roomNum`,
	`flat`.`building` AS `building`,
	`community`.`name` AS `communityName`,
	`community`.`id` AS `communityId`,
	`room`.`roomNum` AS `roomSubNum`,
	`room`.`roomName` AS `roomName`,
	`room`.`id` AS `roomId`,
	`room`.`orgId` AS `orgId`,
	`renter`.`realName` AS `renterName`,
	`renter`.`cellphone` AS `renterPhone`,
	`salecontract`.`rentPayType` AS `rentPayType`,
	`salecontract`.`id` AS `saleContractId`,
	`citydistrict`.`id` AS `cityDistrictId`,
	`citydistrict`.`name` AS `cityDistrictName`,
	`salecontract`.`beginDate` AS `saleContractStartDate`,
	`salecontract`.`endDate` AS `saleContractEndDate`,
	`salecontract`.`status` AS `saleContractStatus`,
	`salecontract`.`leaseTerm` AS `leaseTerm`,
	`salecontract`.`turnStrtus` AS `turnStrtus`,
	`salebill`.`exempt` AS `exempt`,
	`salebill`.`exemptType` AS `exemptType`,
	`salebill`.`sendFlag` AS `sendFlag`,
	`salebill`.`title` AS `title`,
	`salebill`.`bill_type` AS `bill_type`,
	`flat`.`unit` AS `unit`,
	`salebill`.`valid` AS `valid`,
	`flat`.`flatsTag` AS `flatstag`,
	`signedorder`.`sendFlag` AS `signedorder_sendFlag`,
	`signedorder`.`status` AS `status`,		--签约单状态
	`signedorder`.`acctFinished` AS `acctFinished`
FROM
	(
		(
			(
				(
					(
						(
							(
								`bill_salebill` `salebill`
								JOIN `user_renter` `renter`
							)
							JOIN `flat_flats` `flat`
						)
						JOIN `flat_room` `room`
					)
					JOIN `flat_community` `community`
				)
				JOIN `oder_signedorder` `signedorder`
			)
			JOIN `cntr_salecontract` `salecontract`
		)
		JOIN `city_district` `citydistrict`
	)
WHERE
	(
		(
			`salebill`.`userId` = `renter`.`id`
		)
		AND (
			`salebill`.`signedOrderId` = `signedorder`.`id`
		)
		AND (
			`signedorder`.`roomId` = `room`.`id`
		)
		AND (
			`signedorder`.`saleContractId` = `salecontract`.`id`
		)
		AND (
			`signedorder`.`flatsId` = `flat`.`id`
		)
		AND (
			`community`.`id` = `flat`.`communityId`
		)
		AND (
			`room`.`districtId` = `citydistrict`.`id`
		)
	)
