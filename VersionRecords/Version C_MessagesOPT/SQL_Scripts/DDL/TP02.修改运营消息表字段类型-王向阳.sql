/**
 * 修改jumpCode，jumpValue字段长度和生产生mesg_news_record和mesg_push_record表中长度一致
**/
use mogoroomdb;

ALTER TABLE `mesg_pub_task` MODIFY `jumpCode`  varchar(50)  comment '跳转编码';
ALTER TABLE `mesg_pub_task` MODIFY `jumpValue` varchar(256) comment '跳转值';

ALTER TABLE `mesg_pub_click` MODIFY `recordId` INT(11) COMMENT '推送消息记录ID';
ALTER TABLE `mesg_record` MODIFY `pubMessageId` INT(11) COMMENT '运营消息任务记录ID';

create index Index_mobile on mesg_pub_receiver(mobile);
create index Index_pubMessageId on mesg_record(pubMessageId);
