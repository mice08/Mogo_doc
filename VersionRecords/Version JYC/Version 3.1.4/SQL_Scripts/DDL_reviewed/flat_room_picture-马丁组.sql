/* Database name `mogoroomdb`， flat_room_picture修改imageType字段的长度 */
use mogoroomdb;
alter table flat_room_picture modify column imageType varchar(32) null comment '图片类型';



