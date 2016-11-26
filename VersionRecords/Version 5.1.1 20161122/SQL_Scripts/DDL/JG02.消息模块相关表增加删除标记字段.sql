/*禁用delete操作，表上加入有效标记字段*/

use mogoroomdb;

alter table mesg_category add column valid int(1) not null default 1 COMMENT '消息类别状态(0:无效 1:有效)';

alter table mesg_user_category_filter add column valid int(1) not null default 1 COMMENT '消息类别过滤设置状态(0:无效 1:有效)';

alter table mesg_category_role add column valid int(1) not null default 1 COMMENT '消息类别角色关系状态(0:无效 1:有效)';

alter table mesg_category_templet add column valid int(1) not null  default 1 COMMENT '消息类别模板关系状态(0:无效 1:有效)';

alter table mesg_sms_tosend add column valid int(1) not null  default 1 COMMENT '短信发送记录状态(0:无效 1:有效)';

alter table mesg_push_tosend add column valid int(1) not null  default 1 COMMENT '推送发送记录状态(0:无效 1:有效)';

alter table mesg_email_tosend add column valid int(1) not null  default 1 COMMENT '推送发送记录状态(0:无效 1:有效)';

alter table mesg_email_tocheck add column valid int(1) not null default 1 COMMENT '邮件审核记录状态(0:无效 1:有效)';

alter table mesg_push_tocheck add column valid int(1) not null default 1 COMMENT '推送审核记录状态(0:无效 1:有效)';

alter table mesg_sms_tocheck add column valid int(1) not null default 1 COMMENT '短信审核记录状态(0:无效 1:有效)';

