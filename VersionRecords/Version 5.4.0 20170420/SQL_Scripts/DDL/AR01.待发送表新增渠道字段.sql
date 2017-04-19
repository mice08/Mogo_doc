
/** mesgpush待发送表新增发送渠道，用来标示这条push 最终是推送到那个终端上面的 **/
use mogoroomdb;

ALTER TABLE `mesg_push_tosend` ADD COLUMN `sendChannel` INT(11) NULL COMMENT '消息发送渠道(参考字典表ChannelEnum枚举)';