use mogoroomdb;

CREATE TABLE IF NOT EXISTS `user_favorite` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增Id',
  `userId` INT(11) NOT NULL COMMENT '用户Id',
  `userType` TINYINT(3) NOT NULL COMMENT '用户类型(参考字典表groupName:userType)',
  `favoriteType` TINYINT(3) NOT NULL COMMENT '收藏项类型(参考字典表groupName:userFavoriteType)',
  `favoriteId` INT(11) NOT NULL COMMENT '收藏项Id,例如roomId, topicId',
  `status` TINYINT(3) NOT NULL COMMENT '状态位(0:无效 1:有效)',
  `channel` TINYINT(3) NOT NULL COMMENT '适用渠道(参考字典表groupName:channel)',
  `createBy` INT(11) NOT NULL COMMENT '创建人',
  `createByType` TINYINT(3) NOT NULL COMMENT '创建人员类型(参考字典表groupName:userType)',
  `createTime` DATETIME NOT NULL COMMENT '创建时间',
  `updateBy` INT(11) NOT NULL COMMENT '修改人员',
  `updateByType` TINYINT(3) NOT NULL COMMENT '更新人员类型(参考字典表groupName:userType)',
  `updateTime` DATETIME NOT NULL DEFAULT current_timestamp COMMENT '更新时间',
  PRIMARY KEY (`id`))ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4 COMMENT = '用户收藏表，存放用户感兴趣的房子Id,图片Id,';

