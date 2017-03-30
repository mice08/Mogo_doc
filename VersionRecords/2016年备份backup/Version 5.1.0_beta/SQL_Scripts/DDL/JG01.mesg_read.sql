/*消息查看表添加联合索引*/
use mogoroomdb;

ALTER TABLE mesg_read ADD INDEX userid_usertype(userId,userType);