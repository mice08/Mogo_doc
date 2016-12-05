/* 创建用户行为标签表、房源属性历史记录表、用户兴趣标签表 */
use mogoroomdb;

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
   createTime           datetime not null  default CURRENT_TIMESTAMP comment '创建时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '用户兴趣标签表';
