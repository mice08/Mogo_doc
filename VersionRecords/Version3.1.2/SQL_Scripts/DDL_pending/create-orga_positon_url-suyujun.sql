use mogoroomdb;

drop table if exists orga_positon_url;

/*==============================================================*/
/* Table: orga_positon_url                                      */
/*==============================================================*/
create table orga_positon_url
(
   id                   int(11) not null auto_increment comment 'ID',
   orgId                int(11) not null comment '部门ID，关联orga_org表id',
   positionId           int(11) not null comment '岗位ID，关联orga_position表id',
   urlType              varchar(10) not null comment 'url标示的页面',
   urlAddr              varchar(100) not null comment 'url地址',
   createBy             int(11) not null comment '创建人',
   createTime           datetime not null comment '创建时间',
   updateBy             int(11) comment '修改人',
   updateTime           datetime comment '修改时间',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '岗位组织权限表';
