/* Database name `mogoroomdb`，更换消息模版终端类型（terminal字段）, 回滚SQL, 因为 rcvByType 为本次上线新加字段，所以该字段全部恢复默认值*/

use mogoroomdb;

update mesg_templet set rcvByType=0;
