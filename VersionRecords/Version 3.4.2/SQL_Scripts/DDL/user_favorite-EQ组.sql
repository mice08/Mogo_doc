/* Database name `mogoroomdb` , 用户收藏(品牌喜欢)记录表增加device_uuid字段 */
use mogoroomdb;
ALTER TABLE user_favorite ADD COLUMN device_uuid VARCHAR(50) DEFAULT NULL COMMENT '终端设备唯一标识(存放app的UUID,pc和wap存浏览器的sesssionId)';
ALTER TABLE user_favorite ADD COLUMN terminaltype INT(1) DEFAULT NULL COMMENT '设备类型(0:IOS 1:ANDROID)';