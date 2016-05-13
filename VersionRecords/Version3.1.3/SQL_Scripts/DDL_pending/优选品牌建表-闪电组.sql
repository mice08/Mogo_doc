/* 优选品牌建表 */
use mogoroomdb;

/* 创建品牌表 */
drop table if exists brands;
create table brands
(
   id                   int(11) not null auto_increment comment '主键ID',
   name                 varchar(12) not null comment '品牌名',
   landlordId           int(11) not null comment '职业房东ID',
   logoUrl              varchar(128) comment '品牌logo',
   site                 varchar(32) comment '品牌站点网址',
   slogan               varchar(20) comment '宣传语',
   brief                varchar(1000) not null comment '品牌介绍',
   comments             varchar(1000) comment '创始人留言',
   brandPicGroupId      int(11) comment '品牌相关图片组ID',
   brandVideoGroupId    int(11) comment '品牌相关视频组ID',
   stars                int(2) comment '品牌的星级(0无星...5五星)',
   approvalComments     varchar(200) comment '审核信息',
   status               tinyint(1) not null comment '状态(0待审核，1审核通过，2审核不通过，2上线，3下线，99删除)',
   createBy             int(11) comment '创建人Id',
   createByType         tinyint(2) comment '创建人类型，groupName=''userType''',
   createTime           datetime default CURRENT_TIMESTAMP comment '创建时间',
   updateBy             int(11) comment '修改人Id',
   updateByType         tinyint(2) comment '修改人类型，groupName=''userType''',
   updateTime           datetime default CURRENT_TIMESTAMP comment '修改人时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '优选品牌表';

/* 创建用户评价表 */
drop table if exists user_comment;
create table user_comment
(
   id                   int(11) not null auto_increment comment '主键ID',
   objectType           tinyint(1) not null comment '评价对象的类型 (1：品牌)',
   objectId             int(11) not null comment '评价对象的主键ID',
   score                int(2) comment '评分(0-5分)',
   comment              varchar(500) comment '评价内容',
   picGroupId           int(11) comment '评价图片组Id',
   anonymity            tinyint(1) default 0 comment '是否匿名(0不匿名，1匿名)',
   status               tinyint(1) not null default 1 comment '状态(0删除，1有效)',
   channel              tinyint(2) not null comment '频道来源（dict.ChannelEnum）',
   createBy             int(11) not null comment '创建人Id',
   createByType         tinyint(2) not null comment '创建人类型，groupName=''userType''',
   createTime           datetime not null default CURRENT_TIMESTAMP comment '创建时间',
   updateBy             int(11) comment '修改人Id',
   updateByType         tinyint(2) comment '修改人类型，groupName=''userType''',
   updateTime           datetime default CURRENT_TIMESTAMP comment '修改人时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '用户评价表';

/* 创建品牌评测表 */
drop table if exists brandassessment;
create table brandassessment
(
   id                   int(11) not null auto_increment comment '主键ID',
   brandId              int(11) not null comment '品牌ID',
   title                varchar(200) not null comment '评测标题',
   picGroupId           int(11) comment '评测图片组Id(封面图,背景图)',
   author               varchar(50) comment '作者',
   keywords             varchar(200) comment '关键字',
   seoText              varchar(200) comment '描述(SEO)',
   summary              varchar(2000) comment '摘要',
   content              longtext comment '正文',
   readCount            int(11) not null default 0 comment '浏览次数',
   status               tinyint(1) not null default 1 comment '状态(0删除，1上线，2下线)',
   createBy             int(11) not null comment '创建人Id',
   createByType         tinyint(2) not null comment '创建人类型，groupName=''userType''',
   createTime           datetime not null default CURRENT_TIMESTAMP comment '创建时间',
   updateBy             int(11) comment '修改人Id',
   updateByType         tinyint(2) comment '修改人类型，groupName=''userType''',
   updateTime           datetime default CURRENT_TIMESTAMP comment '修改人时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '品牌评测表';

/* 创建品牌承诺表 */
drop table if exists brandpromises;
create table brandpromises
(
   id                   int(11) not null auto_increment comment '主键ID',
   brandId              int(11) not null comment '品牌ID',
   promiseItemKey       varchar(30) not null comment '承诺条目(参考枚举类)',
   promiseItemValue     varchar(30) not null comment '是否承诺("0"未承诺，"1"已承诺)',
   status               tinyint(1) not null default 1 comment '状态(0删除，1有效)',
   createBy             int(11) not null comment '创建人Id',
   createByType         tinyint(2) not null comment '创建人类型，groupName=''userType''',
   createTime           datetime not null default CURRENT_TIMESTAMP comment '创建时间',
   updateBy             int(11) comment '修改人Id',
   updateByType         tinyint(2) comment '修改人类型，groupName=''userType''',
   updateTime           datetime default CURRENT_TIMESTAMP comment '修改人时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '品牌承诺表';