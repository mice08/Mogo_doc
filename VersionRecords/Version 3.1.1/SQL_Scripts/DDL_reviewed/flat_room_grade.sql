/*  Database name `mogoroomdb` ，房源评分表添加唯一索引*/
use mogoroomdb;

alter table `flat_room_grade` add unique `idx_roomid_gradetype` (`roomId`, `gradeType`);