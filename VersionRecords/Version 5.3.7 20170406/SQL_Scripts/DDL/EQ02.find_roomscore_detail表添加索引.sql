/*房源积分明细表先删除房型字段索引，再加上updateTime字段索引*/
USE mogoroomdb;

#删除房型字段索引#
ALTER TABLE find_roomscore_detail DROP INDEX index_prototype;
#增加updateTime字段索引#
ALTER TABLE find_roomscore_detail ADD INDEX updateTime(updateTime); 