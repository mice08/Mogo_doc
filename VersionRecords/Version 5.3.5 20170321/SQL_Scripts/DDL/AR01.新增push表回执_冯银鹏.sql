/**新增极光推送返回数据**/
use mogoroomdb;
ALTER TABLE `mesg_push_record` ADD COLUMN msgId      BIGINT     DEFAULT NULL COMMENT '极光推送内部消息ID';
ALTER TABLE `mesg_push_record` ADD COLUMN sendNo     INT        DEFAULT NULL COMMENT '极光消息发送批次号';
ALTER TABLE `mesg_push_record` ADD COLUMN recvStatus tinyint    DEFAULT NULL COMMENT '接收状态(0:未接收 1:接收)';
