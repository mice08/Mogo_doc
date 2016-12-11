/* Database name `mogoroomdb`, 房源评分明細表，增加公寓ID、房东ID、房间房型ID，业务需要根据公寓、房东、房型更新相关记录 */
USE mogoroomdb;
ALTER TABLE find_roomscore_detail ADD COLUMN landlordId INT(11) DEFAULT -9999 COMMENT '房东ID' AFTER brandId;
ALTER TABLE find_roomscore_detail ADD COLUMN flatsId INT(11) DEFAULT -9999 COMMENT '公寓ID' AFTER landlordId;
ALTER TABLE find_roomscore_detail ADD COLUMN protoType INT(11) DEFAULT -9999 COMMENT '房间房型ID' AFTER flatsId;