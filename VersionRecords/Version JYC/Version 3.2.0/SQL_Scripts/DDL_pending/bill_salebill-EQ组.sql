/* Database name `mogoroomdb` , ���������ֶ� */
use mogoroomdb

alter table flat_room add column coverPicid int(11) null comment '������ʾ�ķ���ͼ';

alter table flat_room_his add column coverPicid int(11) null comment '������ʾ�ķ���ͼ';

alter table flat_room_picture add column picMd5 varchar(40) null comment 'ͼƬ���ݵ�MD5����';