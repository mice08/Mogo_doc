/*房东移动版APP，修改表结构*/


use mogoroomdb;

alter table user_terminal_loginlog add column channel int(2) default 4 comment '房东登陆终端渠道(4:房东APP 18:房东移动版APP)';

alter table mesg_record add column ext int(2) default 4 COMMENT '消息总表扩展字段';