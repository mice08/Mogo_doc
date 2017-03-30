ALTER TABLE `oder_signedOrder`
ADD COLUMN `signedManagerId`  int(11) NULL COMMENT '管家ID' AFTER `deadline`,
ADD COLUMN `signedManagerType`  int(2) NULL COMMENT '管家类型(参考字典表groupName=userType)' AFTER `signedManagerId`;