use mogoroomdb;

DROP TABLE `comm_picture_group`;
CREATE TABLE `comm_picture_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图片分组ID',
  `picGroupType` int(11) NOT NULL COMMENT '分组类型，groupName=''picGroupType''',
  `picGroupName` varchar(45) NOT NULL COMMENT '图片分组名称',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createByType` int(2) NOT NULL COMMENT '创建人类型，groupName=''userType''',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='统一的图片分组表';

-- 图片表加图片组id引用
ALTER TABLE `comm_picture`
ADD COLUMN `picGroupId`  int NULL COMMENT '图片分组ID' AFTER `url`,
ADD COLUMN `sort`  int NULL COMMENT '图片组内顺序' AFTER `picGroupId`;
