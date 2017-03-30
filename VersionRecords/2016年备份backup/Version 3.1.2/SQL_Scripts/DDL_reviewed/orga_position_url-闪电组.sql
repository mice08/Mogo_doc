/*  Database name `mogoroomdb` ，新建组织岗位权限表*/

use mogoroomdb;

drop table if exists orga_positon_url;

drop table if exists orga_position_url;

/*==============================================================*/
/* Table: orga_positon_url                                      */
/*==============================================================*/
create table orga_position_url
(
   id                   int(11) not null auto_increment comment 'ID',
   orgId                int(11) not null comment '部门ID，关联orga_org表id',
   positionId           int(11) not null comment '岗位ID，关联orga_position表id',
   urlType              tinyint(2) not null comment '类型(0:访问首页时需要跳转的url地址)',
   url                  varchar(100) not null comment 'url地址',
   createBy             int(11) not null comment '创建人',
   createTime           datetime not null comment '创建时间',
   createByType         tinyint(2) not null comment '创建人类型（参考字典表组名:userType）',
   updateBy             int(11) comment '修改人',
   updateTime           datetime comment '修改时间',
   updateByType         tinyint(2) comment '修改人类型（参考字典表组名:userType）',
   status               tinyint(1) not null comment '是否有效(0:无效 1:有效)',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '组织岗位权限表';