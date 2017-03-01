/* Database name `mogoroomdb` */
USE mogoroomdb;

/*==============================================================*/
/* Table: find_room_detail_record                                   */
/*==============================================================*/

/*
1. 与房源表等量
2. 每次一条
3. 主要查询sql: select id,createTime.... from find_room_detail_record where roomId=1111
   roomId 需要建立索引
*/
create table find_room_detail_record
(
   id                   INT(11) not null AUTO_INCREMENT comment '主键ID',
   createTime           datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   updateTime           datetime not null DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '更新时间',
   valid                tinyint(1) not null DEFAULT 1 comment '是否有效(0:无效 1:有效)',
   roomId               INT(11) not null comment '房间id',
   roomName             VARCHAR(30) comment '房间名称',
   roomNum              VARCHAR(20) comment '房间编号',
   title                VARCHAR(35) comment '房间标题',
   subtitle             VARCHAR(50) comment '房间子标题',
   subtitleNew          VARCHAR(50) comment '房间新子标题',
   showPrice            decimal(12,2) comment '房间展示价格',
   roomImage            VARCHAR(100) comment '房间封面图',
   roomProtoTypeId      INT(11) comment '房间房型',
   roomScore            decimal(12,2) comment '房源评分',
   lastPublishTime      VARCHAR(30) comment '发布时间',
   pictureMark          tinyint(1) comment 'TP渠道需要，没有则房源不展示(0:无图片 1:有图片)',
   monthlyPay           tinyint(1) comment '官网月付标识(0:非月付 1:月付)',
   tpMonthlyPay         tinyint(1) comment 'TP月付标识(0:非月付 1:月付)',
   roomInfo             VARCHAR(50) comment '房间描述',
   face                 VARCHAR(10) comment '朝向',
   decoration           VARCHAR(16) comment '装修风格',
   veranda              tinyint(1) comment '阳台',
   bayWindow            tinyint(1) comment '飘窗',
   airCond              tinyint(1) comment '空调',
   tv                   tinyint(1) comment '电视',
   hasPic               tinyint(1) comment '是否有图片(0:无 1:有)',
   hasWifi              tinyint(1) comment 'wifi',
   toilet               tinyint(1) comment '厕所',
   area                 decimal(12,2) comment '面积',
   orgId                int(11) comment '分店ID',
   roomRemark           varchar(255) COMMENT '房源备注',
   roomAlias            varchar(32) COMMENT '房间别名',
   roomCreateTime       datetime COMMENT '房间录入时间。用于计算：房源空置开始时间',
   roomUpdateTime       datetime COMMENT '房间更新时间。用于时间排序',
   primary key (id)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '房源数据综合表' ;



/*==============================================================*/
/* Table: find_room_status_record                                   */
/*==============================================================*/

/*
1. 与房源表等量
2. 每次一条
3. 主要查询sql: select id,createTime.... from find_room_status_record where roomId=1111
   roomId 需要建立索引
*/
create table find_room_status_record
(
   id                   INT(11) not null AUTO_INCREMENT comment '主键ID',
   createTime           datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   updateTime           datetime not null DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '更新时间',
   valid                tinyint(1) not null DEFAULT 1 comment '是否有效(0:无效 1:有效)',
   roomId               INT(11) not null comment '房间id',
   checkInTime          datetime comment '可入住时间',
   statusUpdateTime     datetime comment '房态更新时间',
   roomMateGender       tinyint(1) comment '室友性别(1:全是美女 2:全是帅哥 3:男女搭配)',
   roomMateCnstl        VARCHAR(80) comment '室友星座',
   hobbies              VARCHAR(80) comment '室友爱好',
   careers              VARCHAR(100) comment '室友职业',
   roomStatus           tinyint(1) comment '房源状态(0:无效 1:有效)',
   roomCount            INT(11) comment '房源数量(官网)',
   rsciRoomCount        INT(11) comment '房源数量(房态图)',
   roomRentStatus       int(11) COMMENT '房源出租状态。用于计算：租客待补录状态、空置状态、已预定状态',
   listTag              tinyint(1) comment '集中式搜索引擎展示标识(0:不显示 1:显示)',
   tpRoomCount          INT(11) comment '房源数量(TP)',
   primary key (id)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '房源状态综合表' ;



/*==============================================================*/
/* Table: find_room_fixed_record                                   */
/*==============================================================*/

/*
1. 与房源表等量
2. 每次500内
3. 主要查询sql: select id,createTime.... from find_room_fixed_record where roomId=1111
                select id,createTime.... from find_room_fixed_record where brandId=1111
                select id,createTime.... from find_room_fixed_record where flatsId=1111
   roomId、brandId、flatsId 需要建立索引
*/
create table find_room_fixed_record
(
   id                   INT(11) not null AUTO_INCREMENT comment '主键ID',
   createTime           datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   updateTime           datetime not null DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '更新时间',
   valid                tinyint(1) not null DEFAULT 1 comment '是否有效(0:无效 1:有效)',
   roomId               INT(11) not null comment '房间id',
   brandId              INT(11) comment '品牌id',
   brandName            VARCHAR(12) comment '品牌名',
   brandSite            VARCHAR(32) comment '品牌站点网址',
   brandLogo            VARCHAR(100) comment '品牌logo',
   brandStars           INT(2) comment '品牌星级(1:一星 2:二星 3:三星 4:四星 5:五星)',
   brandType            tinyint(1) comment '品牌类型(1:优选 2:普通)',
   landlordId           INT(11) comment '房东id',
   label                tinyint(4) comment '认证房东(0:未认证 1:蘑菇认证)',
   flatsId              INT(11) comment '公寓id',
   rentType             tinyint(1) comment '出租类型(1:自营 2:合租 3:整租)',
   flatType             VARCHAR(11) comment '公寓类型(1:老公房 2:老洋房 3:酒店式公寓 4:公寓房)',
   flatsProtoTypeId     INT(11) comment '公寓房型',
   level                INT(11) comment '房源等级(1:精品房源 2:普通房源)',
   building             varchar(255) comment '楼栋号',
   floorNum             int(11) comment '楼层号',
   floorCountNum        int(11) comment '总楼层数',
   flatRoomNum          varchar(32) comment '房间号',
   bedroomCount         int(11) comment '卧室数',
   parlorCount          int(11) comment '客厅数',
   kitchenCount         int(11) comment '厨房数',
   balconyCount         int(11) comment '阳台数',
   toiletCount          int(11) comment '厕所数',
   flatTag              int(11) comment '公寓类型(1:分散式 2:集中式)',
   flatNickName         varchar(32) COMMENT '公寓别名',
   unit                 varchar(16) COMMENT '几单元',
   flatsNum             varchar(32) COMMENT '公寓编号',
   flatsIsVeriy         int(11) COMMENT '公寓审核状态(0:不通过 1:通过)',
   flatsStatus          int(11) COMMENT '公寓状态(0:不通过 1:通过)',
   isTP                 tinyint(1) comment 'TP资质(0:无资质 1:有资质)',
   needForegift         tinyint(1) comment '免押金(0:非免押金 1:免押金)',
   primary key (id)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '品牌、房东、公寓数据综合表';



/*==============================================================*/
/* Table: find_room_location_record                                   */
/*==============================================================*/

/*
1. 与房源表等量
2. 每次500内
3. 主要查询sql: select id,createTime.... from find_room_location_record where roomId=1111
                select id,createTime.... from find_room_location_record where brandId=1111
                select id,createTime.... from find_room_location_record where flatsId=1111
   roomId、districtId、areaId、communityId 需要建立索引
*/
create table find_room_location_record
(
   id                   INT(11) not null AUTO_INCREMENT comment '主键ID',
   createTime           datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
   updateTime           datetime not null DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '更新时间',
   valid                tinyint(1) not null comment '是否有效(0:无效 1:有效)',
   roomId               INT(11) not null comment '房间id',
   cityId               INT(11) comment '城市id',
   cityName             VARCHAR(16) COMMENT '城市名',
   districtId           INT(11) comment '行政区id',
   districtName         VARCHAR(20) comment '行政区名',
   districtLng          double comment '行政区经度',
   districtLat          double comment '行政区纬度',
   areaId               INT(11) comment '商圈id',
   areaName             VARCHAR(30) comment '商圈名',
   areaLng              double comment '商圈经度',
   areaLat              double comment '商圈纬度',
   communityId          INT(11) comment '小区id',
   communityName        VARCHAR(30) comment '小区名',
   communityLng         double comment '小区经度',
   communityLat         double comment '小区纬度',
   communityCreateTime  datetime COMMENT '小区创建时间',
   nong                 varchar(255) comment '小区所在弄/号',
   street               varchar(255) comment '小区所在街道',   
   subway               VARCHAR(150) comment '地铁线',
   station              VARCHAR(400) comment '地铁站',
   metroInfo            VARCHAR(200) comment '距地铁站离经集合',
   primary key (id)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '小区、商圈、行政区数据综合表';




/* 房间配置表添加系统字段 */
ALTER TABLE flat_room_config ADD COLUMN createTime DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间';
ALTER TABLE flat_room_config ADD COLUMN updateTime DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间';

/* 房源评分表修改系统字段 */
ALTER TABLE flat_room_score MODIFY COLUMN updateTime DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间';

/* 优选品牌表修改系统字段 */
ALTER TABLE brand MODIFY COLUMN updateTime DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间';

/* 房东资质表修改系统字段 */
ALTER TABLE user_landlord_power MODIFY COLUMN updateTime DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间';

/* 房东信用表修改系统字段 */
ALTER TABLE loan_landlord_credit MODIFY COLUMN modifyTime DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间';

/* 房源附属表修改系统字段 */
ALTER TABLE find_room_attachment MODIFY COLUMN updateTime DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间';

/* 行政区表添加系统字段 */
ALTER TABLE city_district ADD COLUMN createTime DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间';
ALTER TABLE city_district ADD COLUMN updateTime DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间';

/* 地铁线表添加系统字段 */
ALTER TABLE city_subway ADD COLUMN createTime DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间';
ALTER TABLE city_subway ADD COLUMN updateTime DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间';

/* 地铁站线关系表添加系统字段 */
ALTER TABLE city_subway_station ADD COLUMN createTime DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间';
ALTER TABLE city_subway_station ADD COLUMN updateTime DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间';

/* 小区地铁关系表添加系统字段 */
ALTER TABLE city_community_station ADD COLUMN createTime DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间';
ALTER TABLE city_community_station ADD COLUMN updateTime DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间';