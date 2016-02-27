use mogoroomdb;
CREATE TABLE `othr_apply_leaguer` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `channel` int(2) NOT NULL COMMENT '来源，参考字典表groupName=channel',
  `cityId` INT(11) NOT NULL COMMENT '城市名称',
  `roomNum` INT(11) NOT NULL COMMENT '房源数量',
  `contacter` VARCHAR(20) NOT NULL COMMENT '联系人',
  `contactsPhone` VARCHAR(50) NOT NULL COMMENT '联系人电话(不排除可以填多个联系方式)',
  `remark` VARCHAR(200) NULL COMMENT '备注',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='申请加盟信息表';