/*  Database name `mogoroomdb` £¬ÊÓÍ¼ÐÞ¸Ä*/
use mogoroomdb;

DROP VIEW `repo_deposit_bill`;

CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `repo_deposit_bill` AS SELECT
	`salebill`.`id` AS `saleBillId`,
	`salebill`.`renterId` AS `renterId`,
	`salebill`.`landlordId` AS `landlordId`,
	`salebill`.`saleBillId` AS `billId`,
	`flat`.`id` AS `flatId`,
	`salebill`.`money` AS `money`,
	`salebill`.`realPayMoney` AS `realPayMoney`,
	`salebill`.`billDate` AS `billDate`,
	`salebill`.`payStatus` AS `payStatus`,
	`salebill`.`createTime` AS `createTime`,
	`salebill`.`startDate` AS `startDate`,
	`salebill`.`endDate` AS `endDate`,
	`salebill`.`signedOrderId` AS `signedOrderId`,
	`salebill`.`periodStage` AS `periodStage`,
	`salebill`.`periodYear` AS `periodYear`,
	`salebill`.`billType` AS `billType`,
	`salebill`.`billDtlType` AS `billDtlType`,
	`salebill`.`valid` AS `valid`,
	`flat`.`flatsNum` AS `flatsNum`,
	`flat`.`roomNum` AS `roomNum`,
	`community`.`name` AS `communityName`,
	`renter`.`realName` AS `renterName`,
	`renter`.`cellphone` AS `renterPhone`,
	`salecontract`.`status` AS `saleContractStatus`,
	`salecontract`.`turnStrtus` AS `turnStrtus`,
	`room`.`id` AS `roomId`,
	`room`.`roomNum` AS `roomSubNum`,
	`room`.`roomName` AS `roomName`,
	`flat`.`building` AS `building`,
	`flat`.`unit` AS `unit`
FROM
	(
		(
			(
				(
					(
						(
							`bill_saleshouldaccount` `salebill`
							JOIN `user_renter` `renter`
						)
						JOIN `flat_flats` `flat`
					)
					JOIN `flat_community` `community`
				)
				JOIN `cntr_salecontract` `salecontract`
			)
			JOIN `oder_signedorder` `signedorder`
		)
		JOIN `flat_room` `room`
	)
WHERE
	(
		(
			`salebill`.`renterId` = `renter`.`id`
		)
		AND (
			`salebill`.`flatsId` = `flat`.`id`
		)
		AND (
			`community`.`id` = `flat`.`communityId`
		)
		AND (
			`signedorder`.`saleContractId` = `salecontract`.`id`
		)
		AND (
			`signedorder`.`id` = `saleBill`.`signedOrderId`
		)
		AND (
			`room`.`id` = `salebill`.`roomId`
		)
		AND ((`salebill`.`billDtlType` BETWEEN 1000000 AND 1999999) OR (`salebill`.`billDtlType`=10003))
	);