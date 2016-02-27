DROP VIEW `repo_room_status`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `repo_room_status` AS select `fr`.`id` AS `roomId`,`fc`.`name` AS `communityName`,`fcp`.`mansionName` AS `mansionName`,`fc`.`id` AS `communityId`,`ff`.`id` AS 
`flatsId`,`ff`.`building` AS `building`,`ff`.`roomNum` AS `flatsRoomNum`,`ff`.`flatsNum` AS `flatsNum`,`ff`.`rentType` AS `rentType`,`fr`.`roomNum` AS `roomNum`,`fr`.`roomName` AS `roomName`,`fr`.`payType` AS 
`payType`,`fr`.`salePrice` AS `salePrice`,`fr`.`roomPrice` AS `roomPrice`,`fr`.`payType2` AS `payType2`,`fr`.`salePrice2` AS `salePrice2`,`fr`.`roomPrice2` AS `roomPrice2`,`fr`.`lockTime` AS `lockTime`,`fr`.`rentStatus` AS 
`rentStatus`,`ur`.`id` AS `rentId`,`ur`.`realName` AS `rentName`,`ur`.`cellphone` AS `rentPhone`,`cs`.`id` AS `saleContractId`,`cs`.`leaseTerm` AS `rentPeriod`,`cs`.`turnStrtus` AS `turnStrtus`,`ff`.`landlordId` AS 
`landlordId`,`ff`.`nickName` AS `nickName`,`ff`.`isVerify` AS `flatsVerify`,`ff`.`bedroomCount` AS `bedroomCount`,`ff`.`parlorCount` AS `parlorCount`,`ff`.`floorNum` AS `floorNum`,`fr`.`isPutaway` AS 
`isPutaway`,`fr`.`putawayTime` AS `putawayTime`,`os`.`id` AS `signedOrderId`,`ba`.`id` AS `saleBillId`,`fcp`.`id` AS `flatsTagId`,(case `fcp`.`flatsTag` when 2 then 2 else 1 end) AS `flatsTag`,(case `ff`.`isVerify` when 1 
then `fr`.`rentStatus` when 0 then 4 when 2 then 4 end) AS `roomRentStatus`,`ba`.`dueDate` AS `dueDate`,`cs`.`endDate` AS `endDate`,`fr`.`status` AS `roomStatus`,`ff`.`status` AS `flatsStatus`,`fc`.`status` AS 
`communityStatus`,`fr`.`checkInTime` AS `checkInTime`,`ff`.`unit` AS `unit` from ((((((((((`flat_room` `fr` left join `user_renter` `ur` on((`ur`.`id` = `fr`.`renterId`))) left join `oder_signedorder` `os` on((`os`.`id` = `fr`.`signedOrderId`))) 
left join `cntr_salecontract` `cs` on((`cs`.`id` = `os`.`saleContractId`))) left join `bill_salebill` `ba` on(((`ba`.`signedOrderId` = `fr`.`signedOrderId`) and (`ba`.`billType` = 1011) and (`ba`.`valid` = 1) and 
(`ba`.`payStatus` = 0)))) join `flat_flats` `ff` on((`ff`.`id` = `fr`.`flatsId`))) join `flat_community` `fc` on((`fc`.`id` = `ff`.`communityId`))) left join `flat_community_property` `fcp` on(((`fcp`.`communityId` = 
`fc`.`id`) and (`fcp`.`landlordId` = `ff`.`landlordId`)))) join `city_district` `cd` on((`cd`.`id` = `fc`.`districtId`))) join `city_business_area` `cba` on((`cba`.`id` = `fc`.`businessId`))) join `city` `c` on((`c`.`id` = 
`cd`.`cityId`)));