/* Database name `mogoroomdb` ，预约单表添加字段 */
use mogoroomdb;

ALTER TABLE `oder_reservationOrder`   
ADD COLUMN `hasVisited` INT(2) DEFAULT 0 NOT NULL  COMMENT '租客是否已看房 0:否 1:是',
ADD COLUMN `landlordRemark` varchar(128) NULL  COMMENT '房东备注内容',
ADD COLUMN `hasAgreed` INT(2) DEFAULT 0 NOT NULL COMMENT '房东是否同意预订 0:否 1:是';
