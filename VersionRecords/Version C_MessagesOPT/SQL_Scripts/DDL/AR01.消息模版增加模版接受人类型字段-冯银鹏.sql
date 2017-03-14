/* Database name `mogoroomdb`，消息模版表增加字段channel - 用于区分模版属于哪个终端 */

use mogoroomdb;

/* 消息模版增加终端类型 */
alter table mesg_templet add column rcvByType int(1) not null default 0 comment '模版消息接受用户类型,参考字典表groupName=userType';

/* 消息模版历史表增加终端类型 */
alter table mesg_templet_his add column rcvByType int(1) not null default 0 comment '模版消息接受用户类型,参考字典表groupName=userType' after businessType;