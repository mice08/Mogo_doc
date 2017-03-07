/* Database name `mogoroomdb`， 房源附属表增加房源对应的mogo显示价格和tp显示价格 */

USE mogoroomdb;

ALTER TABLE find_room_attachment ADD COLUMN mgShowPrice DECIMAL(12,2) NOT NULL DEFAULT '0.00' COMMENT 'mogo显示价格';
ALTER TABLE find_room_attachment ADD COLUMN tpShowPrice DECIMAL(12,2) NOT NULL DEFAULT '0.00' COMMENT 'tp显示价格';