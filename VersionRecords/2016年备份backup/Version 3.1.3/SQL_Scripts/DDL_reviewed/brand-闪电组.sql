/* 创建品牌相关表 */
use mogoroomdb;

/* 创建品牌表 */
drop table if exists brand;
create table brand
(
   id                   int(11) not null auto_increment comment '主键ID',
   name                 varchar(12) not null comment '品牌名',
   landlordId           int(11) not null comment '职业房东ID',
   site                 varchar(32) comment '品牌站点网址',
   slogan               varchar(20) comment '宣传语',
   brief                varchar(1000) not null comment '品牌介绍',
   comments             varchar(1000) comment '创始人留言',
   picGroupId           int(11) comment '品牌相关图片组ID',
   videoGroupId         int(11) comment '品牌相关视频组ID',
   stars                int(2) comment '品牌的星级(0无星...5五星)',
   approvalComments     varchar(200) comment '审核信息',
   status               tinyint(1) not null comment '状态(0:删除 1:待审核 2:审核通过 3:审核不通过)',
   isOnline             tinyint(1) not null comment '状态(0:下线 1:上线)',
   createBy             int(11) not null comment '创建人Id',
   createByType         tinyint(2) not null comment '创建人类型(参考groupName=userType)',
   createTime           datetime not null default CURRENT_TIMESTAMP comment '创建时间',
   updateBy             int(11) comment '修改人Id',
   updateByType         tinyint(2) comment '修改人类型(参考groupName=userType)',
   updateTime           datetime default CURRENT_TIMESTAMP comment '修改人时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '优选品牌表';

/* 创建用户评价表 */
drop table if exists user_comment;
drop table if exists brand_comment;
create table brand_comment
(
   id                   int(11) not null auto_increment comment '主键ID',
   objectType           tinyint(1) not null comment '评价对象的类型 (1:品牌)',
   objectId             int(11) not null comment '评价对象的主键ID',
   score                int(2) comment '评分(0-5分)',
   comments             varchar(500) comment '评价内容',
   picGroupId           int(11) comment '评价图片组Id',
   isAnonymity          tinyint(1) not null default 0 comment '是否匿名(0:不匿名 1:匿名)',
   status               tinyint(1) not null default 1 comment '状态(0:无效 1:有效)',
   channel              tinyint(2) not null comment '频道来源（参考groupName=channel）',
   createBy             int(11) not null comment '创建人Id',
   createByType         tinyint(2) not null comment '创建人类型(参考groupName=userType)',
   createTime           datetime not null default CURRENT_TIMESTAMP comment '创建时间',
   updateBy             int(11) comment '修改人Id',
   updateByType         tinyint(2) comment '修改人类型(参考groupName=userType)',
   updateTime           datetime default CURRENT_TIMESTAMP comment '修改人时间',
   remark               varchar(500) comment '市场部内部评价',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '用户评价表';

/* 创建品牌评测表 */
drop table if exists brand_assessment;
create table brand_assessment
(
   id                   int(11) not null auto_increment comment '主键ID',
   brandId              int(11) not null comment '品牌ID',
   title                varchar(200) not null comment '评测标题',
   picGroupId           int(11) comment '评测图片组Id(封面图,背景图)',
   author               varchar(50) comment '作者',
   keywords             varchar(200) comment '关键字',
   description          varchar(200) comment '描述(SEO)',
   summary              varchar(500) comment '摘要',
   content              longtext not null comment '正文',
   readCount            int(11) not null default 0 comment '浏览次数',
   status               tinyint(1) not null default 1 comment '状态(0:删除 1:上线 2:下线)',
   createBy             int(11) not null comment '创建人Id',
   createByType         tinyint(2) not null comment '创建人类型(参考groupName=userType)',
   createTime           datetime not null default CURRENT_TIMESTAMP comment '创建时间',
   updateBy             int(11) comment '修改人Id',
   updateByType         tinyint(2) comment '修改人类型(参考groupName=userType)',
   updateTime           datetime default CURRENT_TIMESTAMP comment '修改人时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '品牌评测表';

/* 创建品牌承诺表 */
drop table if exists brand_promise;
create table brand_promise
(
   id                   int(11) not null auto_increment comment '主键ID',
   brandId              int(11) not null comment '品牌ID',
   promiseItemKey       varchar(30) not null comment '承诺条目(参考枚举类promiseItem)',
   isPromise            tinyint(1) not null comment '是否承诺(0:未承诺 1:已承诺)',
   status               tinyint(1) not null default 1 comment '状态(0:无效 1:有效)',
   createBy             int(11) not null comment '创建人Id',
   createByType         tinyint(2) not null comment '创建人类型(参考groupName=userType)',
   createTime           datetime not null default CURRENT_TIMESTAMP comment '创建时间',
   updateBy             int(11) comment '修改人Id',
   updateByType         tinyint(2) comment '修改人类型(参考groupName=userType)',
   updateTime           datetime default CURRENT_TIMESTAMP comment '修改人时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '品牌承诺表';

alter table `brand` add index `brand_landlordId_idx` (`landlordId`);

alter table `brand_assessment` add index `assessment_brandId_idx` (`brandId`);

alter table `brand_comment` add unique `comment_unique_idx` (`objectType`, `objectId`);
alter table `brand_comment` drop key `comment_unique_idx`, add index `comment_unique_idx` (`objectType`, `objectId`);

alter table `brand_promise` add unique `promise_unique_idx` (`brandId`, `promiseItemKey`);