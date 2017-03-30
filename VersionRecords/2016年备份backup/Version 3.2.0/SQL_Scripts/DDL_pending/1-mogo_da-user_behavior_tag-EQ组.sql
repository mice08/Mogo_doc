/* 创建用户行为标签表、房源属性历史记录表、用户兴趣标签表 */
use mogo_da;

drop table if exists user_behavior_tag;

/*==============================================================*/
/* Table: user_behavior_tag                                          */
/*==============================================================*/
create table user_behavior_tag
(
   id                   int(11) not null auto_increment comment '主键ID',
   userId               int(11) null comment '用户ID',
   userType             tinyint(2) null comment '用户类型(参考字典表groupName=userType)',
   regId                varchar(32) null comment '极光推送标识ID，用户未注册时使用',
   sourceRecordId       int(11) null comment '源用户行为记录的主键ID',
   sourceRecordCreateTime datetime null comment '源数据创建时间',
   channel              tinyint(2) not null comment '频道来源(参考groupName=channel)',
   behaviorType         tinyint(1) not null comment '行为分类(1-浏览记录 2-拨打电话记录 3-订单记录 4-收藏记录 5-搜索记录)',
   sourceType           tinyint(2) null comment '推荐来源(1:首页推荐 2:品牌房源推荐 3:精品房源推荐 4:愿望清单推荐 5:其他)',
   flatAttrHisId        int(11) not null comment '房源属性历史记录表id',
   status               tinyint(1) not null comment '状态(0:无效 1:有效)',
   createTime           datetime not null default CURRENT_TIMESTAMP comment '创建时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '用户行为标签表';



drop table if exists flat_attribute_his;

/*==============================================================*/
/* Table: flat_attribute_his                                          */
/*==============================================================*/
create table flat_attribute_his
(
   id                   int(11) not null auto_increment comment '主键ID',
   roomId               int(11) not null comment '房间ID',
   cityId               int(11) null comment '城市ID',
   districtId           int(11) null comment '行政区ID',
   businessId           int(11) null comment '商圈ID',
   communityId          int(11) null comment '小区ID',
   stationIds           varchar(512) comment '地铁站ID集合，逗号分隔',
   roomPrice            decimal(10,2) comment '房间价格',
   flatsTag              tinyint(1)  COMMENT '房源类型(1:分散式 2:集中式)',
   rentType             tinyint(1) comment '出租方式(1:单身公寓 2:合租 3:整租)',
   bedroomCount         tinyint(2) comment '卧室数(户型)',
   area                 double(10,2) comment '面积',
   face                 varchar(10) comment '朝向',
   lng                  double comment '经度',
   lat                  double comment '纬度',
   hasToilet            tinyint(1) comment '是否独卫(0:无独立卫生间 1:有独立卫生间)',
   hasBalcony           tinyint(1) comment '是否有阳台(0:无阳台 1:有阳台)',
   hasAircond           tinyint(1) comment '是否有空调(0:无空调 1:有空调)',
   status               tinyint(1) not null default 1 comment '状态(0:无效 1:有效)',
   createTime           datetime not null default CURRENT_TIMESTAMP  comment '创建时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '房源属性历史记录表';



drop table if exists user_interest_tag;

/*==============================================================*/
/* Table: user_interest_tag                                    */
/*==============================================================*/
create table user_interest_tag
(
   id                   int(11) not null auto_increment comment '主键ID',
   goodsType            tinyint(1) not null comment '对象类型(1:房源 2:商品)',
   userId               int(11) comment '用户Id',
   userType             tinyint(2) comment '用户类型(参照groupName=userType)',
   regId                varchar(32) comment '极光推送标识ID，用户未注册时使用',
   matchRuleId          tinyint(2) comment '匹配的推荐规则ID',
   detailTags           varchar(2048) comment '详细兴趣点取值，JSON字符串',
   priority             int(11) not null comment '兴趣的优先级（1为最高，2次之，以此类推）',
   status               tinyint(1) not null default 1 comment '状态(0:无效 1:有效)',
   createTime           datetime not null default CURRENT_TIMESTAMP  comment '创建时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '用户兴趣标签表';
