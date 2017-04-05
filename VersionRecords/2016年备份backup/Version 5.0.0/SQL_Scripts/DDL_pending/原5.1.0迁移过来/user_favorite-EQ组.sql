/* Database name `mogoroomdb` , 用户收藏(品牌喜欢)记录表增加device_uuid字段 */
USE mogoroomdb;
ALTER TABLE user_favorite ADD COLUMN device_uuid VARCHAR(50) DEFAULT NULL COMMENT '终端设备唯一标识(存放app的UUID,pc和wap浏览器的cookie(服务端生成的uuid))';
ALTER TABLE user_favorite ADD COLUMN channelDtl INT(3) DEFAULT NULL COMMENT '渠道明细(参考字典表组名:regChannelDtl)';