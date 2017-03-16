use mogoroomdb;
/*增加登录记录来源渠道*/

ALTER TABLE `user_loginlog`
MODIFY COLUMN `loginType`  int(11) NOT NULL COMMENT '登录类型(参考字典表组名:userType)' AFTER `loginAccount`,
ADD COLUMN `loginSource`  int(11) NULL COMMENT '登录来源渠道(参考字典表组名:loginSourceType)' AFTER `loginType`,
ADD COLUMN `channel`  int(11) NULL COMMENT '渠道(参考字典表组名:channel)' AFTER `loginSource`;
					
