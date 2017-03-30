/* Database name `mogoroomdb` , 房间表添加字段 */
use mogoroomdb

alter table flat_room add column coverPicid int(11) null comment '用于显示的封面图';

alter table flat_room_his add column coverPicid int(11) null comment '用于显示的封面图';

alter table flat_room_picture add column picMd5 varchar(40) null comment '图片内容的MD5编码';