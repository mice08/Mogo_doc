/*新增分店扩展表与分店标签关联表*/
use mogoroomdb;

drop table if exists orga_org_extend;
/*==============================================================*/
/* Table: orga_org_extend                                       */
/*==============================================================*/
create table orga_org_extend
(
   id                   int(11) not null auto_increment comment '分店扩展表id',
   orgId                int(11) not null comment '对应的组织表id',
   cityId               int(11) comment '分店所在的城市',
   districtId           int(11) comment '分店所在的城市行政区',
   address              varchar(200) comment '分店地址',
   xCoordinate          double comment '坐标X',
   yCoordinate          double comment '坐标Y',
   telephone            varchar(16) comment '分店电话',
   bulletin             varchar(1000) comment '公告',
   picGroupId           int(11) comment '主图ID',
   status               tinyint(1) comment '分店状态(0:无效 1:有效)',
   createBy             int(11) not null comment '创建人ID',
   createTime           datetime not null comment '创建时间',
   createByType         tinyint(2) not null comment '创建人类型(参考groupName=userType)',
   updateBy             int(11) comment '修改人ID',
   updateTime           datetime comment '修改时间',
   updateByType         tinyint(2) comment '修改人类型(参考groupName=userType)',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '分店信息扩展表';



drop table if exists orga_tag_rel;
/*==============================================================*/
/* Table: orga_tag_rel                                          */
/*==============================================================*/
create table orga_tag_rel
(
   id                   int(11) not null auto_increment comment 'ID',
   orgId                int(11) not null comment '组织机构ID',
   tagId                int(11) not null comment '标签ID',
   status               tinyint(1) not null comment '标签分店对应状态(0:无效 1:有效)',
   createBy             int(11) not null comment '创建人',
   createTime           datetime not null comment '创建时间',
   createByType         tinyint(2) not null comment '创建人类型(参考groupName=userType)',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '分店标签关联表';

CREATE TABLE `orga_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(45) NOT NULL COMMENT '标签名',
  `userId` int(11) NOT NULL COMMENT '创建者id',
  `userType` tinyint(4) NOT NULL COMMENT '创建者类型(参考字典表userType的组名)',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`,`userId`,`userType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='标签管理表';

/*房源表新增分店id*/
ALTER TABLE flat_room ADD COLUMN orgId INT(11) COMMENT '房源对应的分店id';

ALTER TABLE comm_business_record ADD COLUMN orgId INT(11) COMMENT '操作员对应的组织id' after channel;

use acct;
ALTER TABLE acct_busiRec ADD COLUMN orgId INT(11) COMMENT '操作员对应的组织id' after channel;

ALTER TABLE acct_tradelog ADD COLUMN orgId INT(11) COMMENT '操作员对应的组织id' after channel;