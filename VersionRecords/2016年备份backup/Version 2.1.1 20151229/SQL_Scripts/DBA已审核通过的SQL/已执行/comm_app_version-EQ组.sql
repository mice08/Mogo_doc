/*  Database name `mogoroomdb` ，用户APP版本表添加如下字段*/
use mogoroomdb;

ALTER TABLE `comm_app_version` ADD COLUMN terminal_os varchar(20) not null comment '终端操作系统，iOS或Android' after channel,
ADD COLUMN updatetitle varchar(20) not null comment '升级版本的标题' after forceUpdate,
ADD COLUMN createBy int(11) not null comment '创建人' after url,
ADD COLUMN createByType int(2) not null comment '创建人类型（参考字典表groupName=userType）' after createTime,
ADD COLUMN updateBy int(11) comment '修改人' after createByType,
ADD COLUMN updateByType int(2) comment '修改人类型（参考字典表groupName=userType）' after updateTime,
ADD COLUMN status tinyint(1) not null comment '删除标志，0删除，1未删除';
