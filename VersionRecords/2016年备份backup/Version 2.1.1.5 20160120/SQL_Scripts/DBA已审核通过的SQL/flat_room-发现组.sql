/*  Database name `mogoroomdb` ，修改房间描述长度*/ 
use mogoroomdb; 

ALTER TABLE `flat_room`
MODIFY COLUMN `area` decimal(12,2) NULL COMMENT '面积';