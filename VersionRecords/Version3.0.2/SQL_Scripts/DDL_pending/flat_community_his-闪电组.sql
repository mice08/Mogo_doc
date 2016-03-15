/*  Database name `mogoroomdb` ，新建小区历史表*/
use mogoroomdb;

CREATE TABLE `flat_community_his` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `communityId` INT(11) NULL COMMENT '小区id',
  `name` VARCHAR(30) NULL COMMENT '小区名',
  `districtId` INT(11) NULL COMMENT '城区域id',
  `street` VARCHAR(255) NULL COMMENT '街道',
  `nong` VARCHAR(255) NULL COMMENT '弄/号(上海特色)',
  `businessId` INT(11) NULL COMMENT '商圈id',
  `arearoomId` INT(11) NULL COMMENT '片区id',
  `xCoordinate` VARCHAR(32) NULL COMMENT 'X坐标',
  `yCoordinate` VARCHAR(32) NULL COMMENT 'y坐标',
  `introduction` VARCHAR(512) NULL COMMENT '简介',
  `isverify` TINYINT(1) NULL COMMENT '审核状态',
  `createby` INT(11) NULL COMMENT '创建人',
  `createByType` INT(2) NULL COMMENT '创建用户类型(参见数据字典表组名:userType)',
  `createTime` DATETIME NULL COMMENT '创建时间',
  `updateby` INT(11) NULL COMMENT '修改建人',
  `updatebyType` INT(2) NULL COMMENT '修改用户类型(参见数据字典表组名:userType)',
  `updateTime` TIMESTAMP NULL COMMENT '更新时间',
  `remark` VARCHAR(255) NULL COMMENT '备注',
  `status` TINYINT(1) NULL COMMENT '是否有效(0:无效 1:有效)',
  `soDoneCode` INT(11) NULL COMMENT '业务记录ID(参考comm_business_record表的id)',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='小区历史表';



ALTER TABLE flat_community ADD `updateby` INT(11) NULL COMMENT '修改建人';
ALTER TABLE flat_community ADD `updatebyType` INT(2) NULL COMMENT '修改用户类型(参见数据字典表组名:userType)';