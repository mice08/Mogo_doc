/*  Database name `mogoroomdb` ，创建repo_waitSignedOrder_room视图，待补录租约页面*/
use mogoroomdb;

DROP VIEW repo_waitSignedOrder_room;

CREATE OR REPLACE VIEW repo_waitSignedOrder_room AS 
SELECT
  `fr`.`id`          AS `roomId`,
  `fr`.`roomName`    AS `roomName`,
  `ff`.`id`          AS `flatsId`,
  `ff`.`roomNum`     AS `roomNum`,
  `ff`.`building`    AS `building`,
  `ff`.`flatType`    AS `flatType`,
  `ff`.`flatsNum`    AS `flatsNum`,
  `c`.`id`           AS `cityId`,
  `cd`.`id`          AS `districtId`,
  `fc`.`id`          AS `communityId`,
  `fc`.`name`        AS `communityName`,
  `cd`.`name`        AS `districtName`,
  `c`.`name`         AS `cityName`,
  `ff`.`landlordId`  AS `landlordId`,
  `ff`.`unit`        AS `unit`,
  `fr`.`roomNum`     AS `roomCode`,
  `ff`.`status`      AS `flatStatus`,
  `fr`.`status`      AS `roomStatus`,
  `fr`.`rentStatus`  AS `rentStatus`,
  `fr`.`renterId`    AS `renterId`,
  `fr`.`orgId`       AS `orgId`,
  `fc`.`status`      AS `communityStatus`,
  `ff`.`flatsTag`    AS `flatsTag`
FROM `flat_room` `fr` 
      JOIN `flat_flats` `ff` ON `ff`.`id` = `fr`.`flatsId`
      JOIN `flat_community` `fc` ON `fc`.`id` = `ff`.`communityId`
      JOIN `city_district` `cd` ON `cd`.`id` = `fc`.`districtId`
      JOIN `city` `c` ON `c`.`id` = `cd`.`cityId`;
