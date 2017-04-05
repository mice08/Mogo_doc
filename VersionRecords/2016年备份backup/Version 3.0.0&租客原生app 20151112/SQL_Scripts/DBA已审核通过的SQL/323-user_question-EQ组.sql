/*  Database name `mogoroomdb` ，问题表插入数据*/
use mogoroomdb;

ALTER TABLE user_question
ADD COLUMN createByType  int(11) not null COMMENT '创建人类型(参考字典表组名:userType)',
ADD COLUMN updateByType  int(11) null COMMENT '修改人类型(参考字典表组名:userType)';

insert  into `user_question`(`content`,`createBy`,`createTime`,`type`,`status`,`updateBy`,`updateTime`,`createByType`,`updateByType`) values 
('身份证',1,'2015-11-18 17:40:04',2,1,1,'2015-11-18 17:40:15',0,NULL),
('居住证',1,'2015-11-18 17:53:37',2,1,1,'2015-11-18 17:53:44',0,NULL),
('临时身份证',1,'2015-11-18 17:53:37',2,1,1,'2015-11-18 17:53:44',0,NULL),
('护照',1,'2015-11-18 17:53:37',2,1,1,'2015-11-18 17:53:44',0,NULL),
('台胞证',1,'2016-01-13 15:05:37',2,1,1,'2016-01-13 15:05:41',0,NULL),
('港澳通行证',1,'2016-01-13 15:05:55',2,1,1,'2016-01-13 15:06:00',0,NULL);


