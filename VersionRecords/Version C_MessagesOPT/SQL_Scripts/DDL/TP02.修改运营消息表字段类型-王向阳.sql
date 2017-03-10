use mogoroomdb;

ALTER TABLE `mesg_pub_click` MODIFY `recordId` INT(11) COMMENT '推送消息记录ID';

ALTER TABLE `mesg_record` MODIFY `pubMessageId` INT(11) COMMENT '运营消息任务记录ID';

create index Index_mobile on mesg_pub_receiver(mobile);