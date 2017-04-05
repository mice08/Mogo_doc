/* Database name `mogoroomdb` ，消息批次表添加发送名称字段 */
use mogoroomdb;

ALTER TABLE mesg_batch
ADD COLUMN title varchar(50) null COMMENT '批次发送名称';