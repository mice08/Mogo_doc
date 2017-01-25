/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/1/23 16:24:21                           */
/*==============================================================*/


drop table if exists bizd_landlord_bussiness;

drop table if exists bizd_question;

drop table if exists bizd_answer;

drop table if exists bizd_landlord_district;

drop table if exists bizd_landlord_followup;

drop table if exists bizd_landlord_protect;

drop table if exists bizd_landlord_record;

drop table if exists bizd_landlord_sign;

drop table if exists bizd_user_landlord;

/*==============================================================*/
/* Table: bizd_landlord_bussiness                               */
/*==============================================================*/
create table bizd_landlord_bussiness
(
   id                   int(11) not null,
   bdLandlordId         int(11) comment 'BD房东ID',
   operatingPeriod      int(2) comment '经营年限(参考字典表组名:)',
   officeAddress        varchar(125) comment '办公地址',
   groupRoomCount int(5) comment '集中式房间数',-- ???
   scatterRoomCount int(5) comment '分散式房间数',-- ???
   allCount             int(5) comment '总量(间)',
   vacantCount          int(5) comment '空置房间数',
   minRent              decimal(12,2) comment '最低租金',
   maxRent              decimal(12,2) comment '最高租金',
   avgRent              decimal(12,2) comment '平均租金',
   mansionName          varchar(125) comment '公寓名称',
   staffCount           int(3) comment '团队人数',
   createBy             int(11) comment '创建人ID',
   createByType         int(2) comment '创建人类型(参考字典表组名:userType)',
   createTime           datetime comment '创建时间',
   updateBy             int(11) comment '修改人ID',
   updateByType         int(2) comment '修改人类型(参考字典表组名:userType)',
   updateTime           datetime comment '修改时间',
   valid                tinyint(1) comment '是否有效（0：无效 1：有效）',
   primary key (id)
);

/*==============================================================*/
/* Table: bizd_question                                         */
/*==============================================================*/
create table bizd_question
(
   id                   int(11) not null comment 'id',
   paperChannel         varchar(255) comment '使用源',
   field                varchar(255) comment '字段英文名称',
   fieldName            varchar(255) comment '字段显示名称',
   fieldType            varchar(10) comment '控件类型',
   sort                 int(2) comment '排序',
   description          varchar(255) comment '描述',
   leve                 int(1) comment '等级',
   qtype                 int(2) comment '类型',
   qcode                 varchar(50) comment 'code',
   parentId             int(11) comment 'parentId',
   createBy             int(11) comment '创建人ID',
   createByType         int(2) comment '创建人类型(参考字典表组名:userType)',
   createTime           datetime comment '创建时间',
   updateBy             int(11) comment '修改人ID',
   updateByType         int(2) comment '修改人类型(参考字典表组名:userType)',
   updateTime           datetime comment '修改时间',
   valid                tinyint(1) comment '是否有效（0：无效 1：有效）',
   primary key (id)
);

/*==============================================================*/
/* Table: bizd_answer                                           */
/*==============================================================*/
create table bizd_answer
(
   id                   int(11) not null comment 'id',
   bdLandlordId         int(11) comment 'BD房东ID',
   customfield          int(11) comment '房东字段表ID',
   value                varchar(255) comment '内容',
   valid                tinyint(1) comment '是否有效（0：无效 1：有效）',
   primary key (id)
);

/*==============================================================*/
/* Table: bizd_landlord_district                                */
/*==============================================================*/
create table bizd_landlord_district
(
   id                   int(11) not null,
   bdLandlordId         int(11) comment 'BD房东ID',
   districtId           int(11) comment '区域ID',
   valid                tinyint(2) comment '是否有效(0:无效   1有效)',
   primary key (id)
);

/*==============================================================*/
/* Table: bizd_landlord_followup                                */
/*==============================================================*/
create table bizd_landlord_followup
(
   id                   int(11) not null,
   bdLandlordId         int(11) comment 'BD房东ID',
   createByOrg          varchar(20) comment '创建人部门',
   status               int(2) comment '房东状态',
   FollowUpType         int(2) comment '跟进方式',
   content              varchar(255) comment '跟进内容',
   createBy             int(11) comment '创建人ID',
   createByType         int(2) comment '创建人类型(参考字典表组名:userType)',
   createTime           date comment '创建时间',
   valid                tinyint(1) comment '是否有效（0：无效 1：有效）',
   primary key (id)
);

/*==============================================================*/
/* Table: bizd_landlord_protect                                 */
/*==============================================================*/
create table bizd_landlord_protect
(
   id                   int(11) not null,
   bdLandlordId         int(11) comment 'BD房东ID',
   type                 int(2) comment '保护期类型',
   servicePerson        int(11) comment 'servicePerson',
   planendTime          datetime comment '计划保护结束时间',
   actualEndTime        datetime comment '实际结束时间',
   allDays              int(4) comment '保护期（天）',
   useDays              int(4) comment '使用天数',
   valid                tinyint(1) comment '是否有效（0：无效，1：有效）',
   hasAccount           tinyint(1) comment '是否拥有帐号（0：无，1：有）',
   createBy             int(11) comment '创建人ID',
   createByType         int(2) comment '创建人类型(参考字典表组名:userType)',
   createTime           datetime comment '创建时间',
   primary key (id)
);

/*==============================================================*/
/* Table: bizd_landlord_record                                  */
/*==============================================================*/
create table bizd_landlord_record
(
   id                   int(11) not null,
   bdLandlordId         int(11) comment 'BD房东ID',
   oldStatus            int(2) comment '房东老状态',
   newStatus            int(2) comment '房东新状态',
   oldServicePerson     int(11) comment '老服务人',
   newServicePerson     int(11) comment '新服务人',
   oldOrgId             int(11) comment '老的服务人机构ID',
   newOrgId             int(11) comment '新的服务人机构ID',
   valid                tinyint(1) comment '是否有效（0：无效，1：有效）',
   position	varchar(10) comment '岗位名称',
   operate              int(2) comment '操作',
   reason               varchar(255) comment '原因',
   allotCount          int(11) comment '分配次数'，
   createBy             int(11) comment '创建人ID',
   createByType         int(2) comment '创建人类型(参考字典表组名:userType)',
   createTime           datetime comment '创建时间',
   updateBy             int(11) comment '修改人ID',
   updateByType         int(2) comment '修改人类型(参考字典表组名:userType)',
   updateTime           datetime comment '修改时间',
   isActivation         tinyint(1) comment '是否激活(0:未激活,1:已激活)',
   isOpenAccount        tinyint(1) comment '是否开通帐号(0:未开通,1:已开通)',
   times                int(2) comment '进入公共池的次数',
   primary key (id)
);

/*==============================================================*/
/* Table: bizd_landlord_sign                                    */
/*==============================================================*/
create table bizd_landlord_sign
(
   id                   int(11) not null,
   bdLandlordId         int(11) comment 'BD房东ID',
   picGroupId           int(11) comment '照片',
   createBy             int(11) comment '创建人ID',
   createByType         int(2) comment '创建人类型(参考字典表组名:userType)',
   createTime           datetime comment '创建时间',
   updateBy             int(11) comment '修改人ID',
   updateByType         int(2) comment '修改人类型(参考字典表组名:userType)',
   updateTime           datetime comment '修改时间',
   primary key (id)
);

/*==============================================================*/
/* Table: bizd_user_landlord                                    */
/*==============================================================*/
create table bizd_user_landlord
(
   id                   int(11) not null,
   landlordId           int(11) comment '房东ID',
   cityId               int(11) comment '城市ID',
   name                 varchar(20) comment '房东姓名',
   phone                varchar(14) comment '联系电话',
   roleName             varchar(20) comment '角色',
   sex                  tinyint(1) comment '性别',
   ageGroup             varchar(10) comment '年龄段',
   province             int(11) comment '省份(参考city_province)',
   education            int(2) comment '学历(参考字典表组名:educationalBackground)',
   maritalStatus        tinyint(1) comment '婚姻状况(0:未婚,1:已婚)',
   avocation            tinyint(1) comment '副业(0:无  1:有)',
   dataChannel          tinyint(2) comment '数据来源',
   bdchannel            tinyint(2) comment '拓展渠道(1:地推,2:网络,3:老客户介绍,9:其它)',
   bdchannelremark      varchar(20) comment '拓展渠道其它的内容',
   status               tinyint(2) comment '状态',
   servicePerson        int(11) comment '服务人',
   serviceOrgId		 int(11) comment '服务组织',
   canBeAssigned        tinyint(1) comment '是否可分配（0：不可，1：可）',
   allotCount          int(11)分配次数
   createBy             int(11) comment '创建人ID',
   createByType         int(2) comment '创建人类型(参考字典表组名:userType)',
   createTime           dateTime comment '创建时间',
   updateBy             int(11) comment '修改人ID',
   updateByType         int(2) comment '修改人类型(参考字典表组名:userType)',
   updateTime           dateTime comment '修改时间',
   valid                tinyint(1) comment '是否有效（0：无效 1：有效）',
   primary key (id)
);

