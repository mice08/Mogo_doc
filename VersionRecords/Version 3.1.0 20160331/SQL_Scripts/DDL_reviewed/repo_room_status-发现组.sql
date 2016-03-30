/*  Database name `mogoroomdb` ，修改视图：增加合同属性、预订单信息 */
/*  update by zhengliangjie 2016年3月17日 16:00:45 */
use mogoroomdb;

DROP VIEW IF EXISTS repo_room_status;

CREATE VIEW repo_room_status
AS 
SELECT
	`fr`.`id` AS `roomId`,
	`fc`.`name` AS `communityName`,
	`fcp`.`mansionName` AS `mansionName`,
	`fc`.`id` AS `communityId`,
	`ff`.`id` AS `flatsId`,
	`ff`.`building` AS `building`,
	`ff`.`roomNum` AS `flatsRoomNum`,
	`ff`.`flatsNum` AS `flatsNum`,
	`ff`.`rentType` AS `rentType`,
	`fr`.`roomNum` AS `roomNum`,
	`fr`.`roomName` AS `roomName`,
	`cs`.`rentPayType` AS `payType`,
	`cs`.`realRentPrice` AS `salePrice`,
	`fr`.`roomPrice` AS `roomPrice`,
	`fr`.`payType2` AS `payType2`,
	`fr`.`salePrice2` AS `salePrice2`,
	`fr`.`roomPrice2` AS `roomPrice2`,
	`fr`.`lockTime` AS `lockTime`,
	`fr`.`rentStatus` AS `rentStatus`,
	`ur`.`id` AS `rentId`,
	`ur`.`realName` AS `rentName`,
	`ur`.`cellphone` AS `rentPhone`,
	`cs`.`id` AS `saleContractId`,
	`cs`.`leaseTerm` AS `rentPeriod`,
	`cs`.`turnStrtus` AS `turnStrtus`,
	`ff`.`landlordId` AS `landlordId`,
	`ff`.`nickName` AS `nickName`,
	`ff`.`isVerify` AS `flatsVerify`,
	`ff`.`bedroomCount` AS `bedroomCount`,
	`ff`.`parlorCount` AS `parlorCount`,
	`ff`.`floorNum` AS `floorNum`,
	`fr`.`isPutaway` AS `isPutaway`,
	`fr`.`putawayTime` AS `putawayTime`,
	`os`.`id` AS `signedOrderId`,
	`os`.`status` AS `signedOrderStatus`,
	`ba`.`id` AS `saleBillId`,
	`fcp`.`id` AS `flatsTagId`,
	`ff`.`flatsTag` AS `flatsTag`,
	(CASE `ff`.`isVerify`
	WHEN 1 THEN
		`fr`.`rentStatus`
	WHEN 0 THEN
		`ff`.`isVerify`
	WHEN 2 THEN
		4
	END) AS `roomRentStatus`,
 `ba`.`dueDate` AS `dueDate`,
 `cs`.`beginDate` AS `beginDate`,
 `cs`.`endDate` AS `endDate`,
 `fr`.`status` AS `roomStatus`,
 `ff`.`status` AS `flatsStatus`,
 `fc`.`status` AS `communityStatus`,
 `fr`.`checkInTime` AS `checkInTime`,
 `ff`.`unit` AS `unit`,
 `ff`.`protoType` AS `flatProtoType`,
 `fr`.`protoType` AS `roomProtoType`,
 `fr`.`agencyFee` AS `agencyFee`,
 `fr`.`manageFee` AS `manageFee`,
 `ob`.`id` AS `bookOrderId`,
 `ob`.`signedEndTime` AS `signedEndTime`,
 `fr`.`remark` AS `roomRemark`,
 `fc`.`street` AS `street`,
 `fc`.`nong`  AS `nong`
FROM
	`flat_flats` `ff`
LEFT JOIN `flat_room` `fr` ON `ff`.`id` = `fr`.`flatsId`
LEFT JOIN `oder_bookorder` `ob` ON `ob`.`roomId` = `fr`.`id`
AND `ob`.`renterId` = `fr`.`renterId`
AND `ob`.`status` in(2,3)
LEFT JOIN `user_renter` `ur` ON `ur`.`id` = `fr`.`renterId`
LEFT JOIN `oder_signedorder` `os` ON `os`.`id` = `fr`.`signedOrderId`
LEFT JOIN `cntr_salecontract` `cs` ON `cs`.`id` = `os`.`saleContractId`
LEFT JOIN `bill_salebill` `ba` ON `ba`.`signedOrderId` = `fr`.`signedOrderId`
AND `ba`.`bill_type` = 1004
AND `ba`.`valid` = 1
AND `ba`.`payStatus` = 0
LEFT JOIN `flat_community` `fc` ON `fc`.`id` = `ff`.`communityId`
LEFT JOIN `flat_community_property` `fcp` ON `fcp`.`communityId` = `fc`.`id`
AND `fcp`.`landlordId` = `ff`.`landlordId`
LEFT JOIN `city_district` `cd` ON `cd`.`id` = `fc`.`districtId`
LEFT JOIN `city_business_area` `cba` ON `cba`.`id` = `fc`.`businessId`
LEFT JOIN `city` `c` ON `c`.`id` = `cd`.`cityId`;


