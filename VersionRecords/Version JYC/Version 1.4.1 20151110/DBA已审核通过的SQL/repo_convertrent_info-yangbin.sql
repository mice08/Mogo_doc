DROP VIEW `repo_convertrent_info`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `repo_convertrent_info` AS select `os`.`id` AS `signedOrderId`,`ffr`.`flatsTag` AS `flatsTag`,`fr`.`id` AS `roomId`,`fr`.`roomName` AS `roomName`,`ff`.`id` AS 
`flatsId`,`ff`.`roomNum` AS `roomNum`,`ff`.`building` AS `building`,`ff`.`flatType` AS `flatType`,`c`.`id` AS `cityId`,`cd`.`id` AS `districtId`,`fc`.`id` AS `communityId`,`fc`.`name` AS `communityName`,`cd`.`name` AS 
`districtName`,`c`.`name` AS `cityName`,`cst`.`turnStrtus` AS `saleContractTurnStrtus`,`cst`.`id` AS `saleContractId`,`cst`.`createTime` AS `saleContractCreateTime`,`os`.`status` AS `signedOrderStatus`,`ff`.`landlordId` AS 
`landlordId`,`ur`.`id` AS `renterId`,`ff`.`unit` AS `unit` from ((((((((`flat_room` `fr` join `flat_flats` `ff` on((`ff`.`id` = `fr`.`flatsId`))) join `flat_community` `fc` on((`fc`.`id` = `ff`.`communityId`))) join `city_district` `cd` on
((`cd`.`id` = `fc`.`districtId`))) join `city` `c` on((`c`.`id` = `cd`.`cityId`))) left join `oder_signedorder` `os` on((`fr`.`id` = `os`.`roomId`))) left join `user_renter` `ur` on((`os`.`renterId` = `ur`.`id`))) left join 
`cntr_salecontract` `cst` on((`os`.`saleContractId` = `cst`.`id`))) left join `flat_community_property` `ffr` on((`ffr`.`communityId` = `fc`.`id`))) where (`fr`.`rentStatus` = 2);
