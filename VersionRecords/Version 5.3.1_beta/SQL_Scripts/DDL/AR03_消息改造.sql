USE mogoroomdb;


/**修改消息Value长度**/
ALTER TABLE `mesg_push_tosend`  MODIFY COLUMN jumpCode VARCHAR(50) COMMENT '跳转编码';
ALTER TABLE `mesg_push_record`  MODIFY COLUMN jumpCode VARCHAR(50) COMMENT '跳转编码';
ALTER TABLE `mesg_push_tocheck` MODIFY COLUMN jumpCode VARCHAR(50) COMMENT '跳转编码';
ALTER TABLE `mesg_news_record`  MODIFY COLUMN jumpCode VARCHAR(50) COMMENT '跳转编码';

