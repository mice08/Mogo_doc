/* 创建品牌V分表 */
use mogoroomdb;

drop table if exists brand_vscore;

/*==============================================================*/
/* Table: brand_vscore                                          */
/*==============================================================*/
create table brand_vscore
(
   id                   int(11) not null auto_increment comment '主键ID',
   landlordId           int(11) not null comment '职业房东ID',
   dimensionName        varchar(32) not null comment '评分维度 (参考groupName=vScoreDimension) ',
   dimensionValue       varchar(128) not null comment '维度取值',
   status               tinyint(1) not null default 1 comment '状态(0:无效 1:有效)',
   createBy             int(11) not null comment '创建人Id',
   createByType         tinyint(2) not null comment '创建人类型(参考字典表groupName=userType)',
   createTime           datetime not null default CURRENT_TIMESTAMP comment '创建时间',
   updateBy             int(11) comment '修改人Id',
   updateByType         tinyint(2) comment '修改人类型(参考字典表groupName=userType)',
   updateTime           datetime default CURRENT_TIMESTAMP comment '修改人时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '品牌V分表';


INSERT INTO comm_dictionary (CODE,groupName,sort,keyPro,VALUE,STATUS,enValue)VALUES('totalRooms','vScoreDimension',1,'G','房源录入量',1,'totalRooms');
INSERT INTO comm_dictionary (CODE,groupName,sort,keyPro,VALUE,STATUS,enValue)VALUES('turnCntrCount','vScoreDimension',2,'J','租约补录量',1,'turnCntrCount');
INSERT INTO comm_dictionary (CODE,groupName,sort,keyPro,VALUE,STATUS,enValue)VALUES('onlineSignCount','vScoreDimension',3,'O','在线签约量',1,'onlineSignCount');
INSERT INTO comm_dictionary (CODE,groupName,sort,keyPro,VALUE,STATUS,enValue)VALUES('onlinePayCount','vScoreDimension',4,'Q','在线支付笔数',1,'onlinePayCount');
INSERT INTO comm_dictionary (CODE,groupName,sort,keyPro,VALUE,STATUS,enValue)VALUES('rentedRoomCount','vScoreDimension',5,'H','房源已租量',1,'rentedRoomCount');
INSERT INTO comm_dictionary (CODE,groupName,sort,keyPro,VALUE,STATUS,enValue)VALUES('vScore','vScoreDimension',6,'V','V分',1,'vScore');