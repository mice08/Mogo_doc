/* Database name `mogoroomdb`，消息模版表增加字段channel - 用于区分模版属于哪个终端 */

use mogoroomdb;

/* 消息模版增加终端类型 */
alter table mesg_templet add column terminal int(1) not null default 0 comment '模版所属终端,1:租客,2:房东';

/* 消息模版历史表增加终端类型 */
alter table mesg_templet_his add column terminal int(1) not null default 0 comment '模版所属终端,1:租客,2:房东' after businessType;