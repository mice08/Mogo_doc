/*  Database name `mogoroomdb` ����Դ���ֱ����Ψһ����*/
use mogoroomdb;

alter table `flat_room_grade` add unique `idx_roomid_gradetype` (`roomId`, `gradeType`);