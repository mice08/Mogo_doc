/*房源积分明细表的updateTime字段增加索引*/
USE mogoroomdb;

ALTER TABLE find_roomscore_detail ADD INDEX updateTime(updateTime); 

