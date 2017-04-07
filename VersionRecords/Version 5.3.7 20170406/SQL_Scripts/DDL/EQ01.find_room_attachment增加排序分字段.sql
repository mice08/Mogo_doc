/*房源附属表增加房源排序分字段,用于C端房源排序,之前房源根据房源质量分(flat_room表的roomscore字段)排序，为了解决房东霸屏问题，增加了排序分，排序分依赖质量分存在*/
USE mogoroomdb;

ALTER TABLE find_room_attachment ADD sortScore DECIMAL(10,2) NOT NULL DEFAULT '0.00' COMMENT '房源排序分';