/*标签表新增字段*/
use mogoroomdb;


/*==============================================================*/
/* Table: coms_hotTab                           */
/*==============================================================*/
alter table coms_hotTab add column pId  int unsigned comment '父ID',
						add column tabType tinyint(1) not null comment '标签类型(1:推荐房源标签 2:推荐品牌标签)',
						add column channel int not null comment '渠道(枚举:字典表groupname=channel)',
						add column menucode int not null comment '发布位置(枚举:首页,精品专区首页,品牌专区首页,品牌专区推荐,合作页品牌推荐)',
						add column brief varchar(300) not null comment '摘要',
						add column description varchar(3000) comment '描述',
						add column status tinyint(1) not null default 1 comment '状态(1:上线 0:下线)',
						add column valid tinyint(1) not null default 1 comment '是否有效(1:有效 0:无效)',
						add column jumpCode varchar(10) comment '跳转编码',
						add column jumpValue varchar(20) comment '跳转值',
						add column contentType int comment '内容类型(1:文字 2:图片 3:房源 4:品牌 5:地理位置)',
						add column pageview int default 0 comment '浏览量',
						add column remark varchar(200) comment '备注';


create table coms_hotbrand
(
   id                   INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
   brandtabid           int(11) not null comment '标签ID',
   brandid              int(11) not null comment '品牌ID',
   branddesc            varchar(300) comment '品牌描述',
   status               tinyint(1) not null default 1 comment '是否有效(1:有效 0:无效)',
   roomids              varchar(100) comment '推荐品牌下房源(多个\n房间ID以英文逗号隔开)',
   createBy             INT(11) COMMENT '创建人',
   createByType         INT(2) COMMENT '创建人类型(参考groupName=userType)',
   createTime           datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   updateBy             INT(11) COMMENT  '修改人',
   updateByType         INT(2) COMMENT '修改人类型(参考groupName=userType)',
   updateTime           datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
   remark               varchar(200) comment '备注',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '品牌推荐表';
