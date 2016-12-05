/*  Database name `mogoroomdb` ，消息记录表修改*/ 
use mogoroomdb; 

ALTER TABLE mesg_record  modify column receiveBy int(11) null comment '接收消息的用户id',
modify column receiveByType int(2) null comment '接收消息的用户类型（参考字典表groupName=userType）',
modify column createTime datetime not null comment '消息记录创建时间';
