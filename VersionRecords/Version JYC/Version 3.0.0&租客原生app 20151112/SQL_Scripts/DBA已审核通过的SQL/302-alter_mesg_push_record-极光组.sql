/* Database name `mogoroomdb` ，因消息子模板表中增加字段长度，这个 推送待发送表的字段长度也要改 */
use mogoroomdb;

ALTER TABLE `mesg_push_record` CHANGE `jumpCode` `jumpCode` VARCHAR(30) CHARSET utf8 COLLATE utf8_general_ci NULL   COMMENT '跳转编码';

ALTER TABLE `mesg_push_tocheck` CHANGE `jumpCode` `jumpCode` VARCHAR(30) CHARSET utf8 COLLATE utf8_general_ci NULL   COMMENT '跳转编码';

ALTER TABLE `mesg_push_tosend` CHANGE `jumpCode` `jumpCode` VARCHAR(30) CHARSET utf8 COLLATE utf8_general_ci NULL   COMMENT '跳转编码';