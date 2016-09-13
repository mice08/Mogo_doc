/*房间表添加蘑菇介绍，公寓房型表添加介绍、蘑菇介绍*/
use mogoroomdb;

ALTER TABLE `flat_room` ADD COLUMN `mogoIntro` VARCHAR (255) NULL COMMENT '蘑菇介绍内容' AFTER `intro`;

ALTER TABLE `flat_room_his` ADD COLUMN `mogoIntro` VARCHAR (255) NULL COMMENT '蘑菇介绍内容' AFTER `intro`;

ALTER TABLE `flat_flats_prototype` ADD COLUMN `intro` VARCHAR (255) NULL COMMENT '介绍',
 ADD COLUMN `mogoIntro` VARCHAR (255) NULL COMMENT '蘑菇介绍';

ALTER TABLE `flat_flats_prototype_his` ADD COLUMN `intro` VARCHAR (255) NULL COMMENT '介绍',
 ADD COLUMN `mogoIntro` VARCHAR (255) NULL COMMENT '蘑菇介绍';