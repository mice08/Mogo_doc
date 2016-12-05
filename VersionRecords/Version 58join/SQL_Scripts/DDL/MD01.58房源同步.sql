use mogoroomdb;
CREATE TABLE `flat_joint_register` (
	`id` INT (11) NOT NULL AUTO_INCREMENT COMMENT '主键',
	`userId` INT (11) NOT NULL COMMENT '用户ID(userinfo表ID)',
	`userType` INT (1) NOT NULL COMMENT '申请人类型(参考字典表groupName=userType)',
	`registerTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`jointBeginTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '开始推广时间',
	`jointEndTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '结束推广时间',
	`jointChannel` INT (2) NOT NULL DEFAULT 1 COMMENT '推广渠道 (1：58网)',
	`valid` INT (2) NOT NULL DEFAULT 1 COMMENT '状态 (1:有效 0:无效)',
	`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`createBy` INT (11) NOT NULL COMMENT '创建人',
	`createByType` VARCHAR (50) NOT NULL COMMENT '创建人类型(参考字典表groupName=userType)',
	`updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
	`updateBy` INT (11) DEFAULT NULL COMMENT '修改人',
	`updateByType` INT (11) DEFAULT NULL COMMENT '修改人类型(参考字典表groupName=userType)',
	PRIMARY KEY (`id`)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '房东推广申请表';

CREATE TABLE `flat_joint_room` (
	`id` INT (11) NOT NULL AUTO_INCREMENT COMMENT '主键',
	`cityId` INT (11) DEFAULT NULL COMMENT '城市ID',
	`cityName` VARCHAR (30) DEFAULT NULL COMMENT '城市名',
	`districtId` INT (11) DEFAULT NULL COMMENT '区域ID',
	`districtName` VARCHAR (30) DEFAULT NULL COMMENT '区域名',
	`roomId` INT (11) NOT NULL COMMENT '房间ID(flat_room表ID)',
	`websiteRoomId` BIGINT (20) DEFAULT NULL COMMENT '同步网站房间ID',
	`websiteRoomUrl` VARCHAR (200) DEFAULT NULL COMMENT '同步网站房间URL',
	`communityName` VARCHAR (30) DEFAULT NULL COMMENT '小区名',
	`flatsNum` VARCHAR (20) DEFAULT NULL COMMENT '公寓编号  市号+区编号+该区的第N套客房',
	`building` VARCHAR (255) DEFAULT NULL COMMENT '楼栋号',
	`roomNum` VARCHAR (32) DEFAULT NULL COMMENT '房间号几零几',
	`unit` VARCHAR (20) DEFAULT NULL COMMENT '单元',
	`bedroomCount` INT (11) DEFAULT '0' COMMENT '单元',
	`parlorCount`INT (11) DEFAULT '0'  COMMENT '单元',
	`toiletCount` INT (11) DEFAULT '0' COMMENT '单元',
	`landlordId` INT (11) DEFAULT NULL COMMENT '职业房东Id',
	`jointAccount` VARCHAR (32) DEFAULT NULL COMMENT '推广账号',
	`jointBeginTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '开始推广时间',
	`jointEndTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '结束推广时间',
	`jointChannel` INT NOT NULL COMMENT '推广渠道 (1：58网)',
	`title` VARCHAR (100) COMMENT '推广标题',
	`description` VARCHAR (1000) COMMENT '推广描述',
	`status` INT (2) NOT NULL DEFAULT 1 COMMENT '状态 (0：下架 1：推广中 2：上架失败 3：下架失败)',
	`jointType` INT (2) NOT NULL COMMENT '对接形式 (0：替补 1：正常)',
	`valid` INT (2) NOT NULL COMMENT '状态 (1:有效 0：无效)',
	`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`createBy` INT (11) NOT NULL COMMENT '创建人',
	`createByType` INT (11) NOT NULL COMMENT '创建人类型(参考字典表groupName=userType)',
	`updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
	`updateBy` INT (11) DEFAULT NULL COMMENT '修改人',
	`updateByType` INT (11) DEFAULT NULL COMMENT '修改人类型(参考字典表groupName=userType)',
	PRIMARY KEY (`id`)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '推广房间信息';


CREATE TABLE `flat_joint_template` (
	`id` INT (11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
	`flatsType` INT (2) DEFAULT NULL COMMENT '公寓类型(0：整租 1:合租 2：集中式)',
	`roomDescTemplate` VARCHAR (1000) DEFAULT NULL COMMENT '房源描述模板',
	`jointChannel` INT NOT NULL COMMENT '推广渠道 (1：58网)',
	`valid` INT (2) NOT NULL DEFAULT 1 COMMENT '状态 (1:有效 0:无效)',
	`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`createBy` INT (11) NOT NULL COMMENT '创建人',
	`createByType` VARCHAR (50) NOT NULL COMMENT '创建人类型(参考字典表groupName=userType)',
	`updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
	`updateBy` INT (11) DEFAULT NULL COMMENT '修改人',
	`updateByType` INT (11) DEFAULT NULL COMMENT '修改人类型(参考字典表groupName=userType)',
	PRIMARY KEY (`id`)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '房东推广模板表';

