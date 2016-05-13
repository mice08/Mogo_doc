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
   address              varchar(200) comment '分店地址',
   telephone            varchar(16) comment '分店电话',
   bulletin             varchar(1000) comment '公告',
   xCoordinates         double comment '坐标X',
   yCoordinates         double comment '坐标Y',
   picId                int(11) comment '主图ID',
   cityId               int(11) comment '城市分店所在的城市',
   districtId           int(11) comment '分店所在的城市行政区',
   status               tinyint(1) comment '分店状态(0:无效 1:有效)',
   createBy             int(11) not null comment '创建人ID',
   createTime           datetime not null comment '创建时间',
   createByType         tinyint(2) not null comment '创建人类型(参考groupName=userType)',
   updateBy             int(11) comment '修改人ID',
   updateTime           datetime comment '修改时间',
   updateByType         tinyint(2) comment '修改人类型(参考groupName=userType)',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '分店信息扩展表';



drop table if exists orga_tag_relation;
/*==============================================================*/
/* Table: orga_tag_relation                                     */
/*==============================================================*/
create table orga_tag_relation
(
   id                   int(11) not null auto_increment comment 'ID',
   orgId                int(11) not null comment '组织机构ID',
   tagId                int(11) comment '标签ID',
   status               tinyint(1) comment '标签分店对应状态(0:无效 1:有效)',
   createBy             int(11) comment '创建人',
   createTime           datetime comment '创建时间',
   createByType         tinyint(2) not null comment '创建人类型(参考groupName=userType)',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '分店标签关联表';

/*房源表新增分店id*/
ALTER TABLE flat_room ADD COLUMN orgId INT(11) COMMENT '房源对应的分店id';

