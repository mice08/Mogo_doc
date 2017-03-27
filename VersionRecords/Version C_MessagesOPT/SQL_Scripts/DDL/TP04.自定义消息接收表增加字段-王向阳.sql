/* Database name `mogoroomdb`, 自定义消息接收表增加字段 */

use mogoroomdb;

ALTER TABLE `mesg_pub_receiver`
  ADD COLUMN `deviceType` TINYINT(4) NULL   COMMENT '设备类型(0:IOS 1:ANDROID)' AFTER `regId`,
  ADD COLUMN `userId` INT(11) NULL   COMMENT '用户ID' AFTER `deviceType`,
  ADD COLUMN `userType` INT(11) NULL   COMMENT '用户类型(参考字典表组名:userType)' AFTER `userId`;