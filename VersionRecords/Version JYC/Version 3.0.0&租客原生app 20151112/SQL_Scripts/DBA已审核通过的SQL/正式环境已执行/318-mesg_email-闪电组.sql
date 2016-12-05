/*  Database name `mogoroomdb` ，邮件发送表添加附件存储路径*/
use mogoroomdb;

ALTER TABLE mesg_email_tocheck ADD COLUMN attachmentUrls VARCHAR(250) DEFAULT NULL COMMENT '邮件发送附件存储路径，多路径以 , 号相隔';
ALTER TABLE mesg_email_tosend ADD COLUMN attachmentUrls VARCHAR(250) DEFAULT NULL COMMENT '邮件发送附件存储路径，多路径以 , 号相隔';
ALTER TABLE mesg_email_record ADD COLUMN attachmentUrls VARCHAR(250) DEFAULT NULL COMMENT '邮件发送附件存储路径，多路径以 , 号相隔';
