use mogoroomdb;

ALTER TABLE `mesg_pub_click` MODIFY `recordId` INT(11) COMMENT '推送消息记录ID';

create index Index_mobile on mesg_pub_receiver(mobile);