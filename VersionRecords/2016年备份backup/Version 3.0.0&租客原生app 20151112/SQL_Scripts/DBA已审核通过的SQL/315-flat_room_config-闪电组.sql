/*  Database name `mogoroomdb` ，房间属性表增加一个空调数量字段*/
use mogoroomdb;

alter table `flat_room_config` add column `aircondNum` tinyint(1) DEFAULT '0' NOT NULL COMMENT '空调数量';

UPDATE flat_room_config frc SET frc.aircondNum = 1 WHERE EXISTS (SELECT ff.id FROM flat_flats ff LEFT JOIN flat_room fr ON ff.id = fr.flatsId WHERE ff.rentType = 1 AND fr.id IS NOT NULL AND frc.roomId = fr.id);