
use bizd;

/*
新建表：增加bizd房东表
1. 上线之后会有5000+条数据，日后看拓展录入
2. 主要查询sql: select * from bizd_user_landlord where id = {0}
3. 索引: 目前只有id
*/
create table bizd_user_landlord
(
   id                   int(11) not null  AUTO_INCREMENT COMMENT '主键id',
   landlordId           int(11) comment '房东ID',
   cityId               int(11) comment '城市ID',
   name                 varchar(20) comment '房东姓名',
   phone                varchar(14) comment '联系电话',
   roleName             varchar(20) comment '角色',
   sex                  tinyint(1) comment '性别(0:女,1:男)',
   ageGroup             varchar(10) comment '年龄段',
   province             int(11) comment '省份(参考city_province)',
   education            int(2) comment '学历(参考字典表组名:educationalBackground)',
   maritalStatus        tinyint(1) comment '婚姻状况(0:未婚,1:已婚)',
   avocation            tinyint(1) comment '副业(0:无,1:有)',
   dataChannel          int(2) comment '数据来源(参考字典表组名:bizd_dataChannel)',
   bdchannel            int(2) comment '拓展渠道(1:地推,2:网络,3:老客户介绍,9:其它)',
   bdchannelremark      varchar(20) comment '拓展渠道其它的内容',
   status               int(2) comment '房东状态(参考字典表组名:bizd_LandlordStatus)',
   servicePerson        int(11) comment '服务人',
   serviceOrgId		      int(11) comment '服务组织',
   canBeAssigned        tinyint(1) default 0 comment '是否可分配(0:不可,1:可)',
   allotCount           int(11) comment '分配次数',
   createBy             int(11) comment '创建人ID',
   createByType         int(2) comment '创建人类型(参考字典表组名:userType)',
   createTime           dateTime comment '创建时间',
   updateBy             int(11) comment '修改人ID',
   updateByType         int(2) comment '修改人类型(参考字典表组名:userType)',
   updateTime           dateTime comment '修改时间',
   landlordNum          varchar(20) comment '房东编号',
   valid                tinyint(1) DEFAULT '1' comment '是否有效(0:无效,1:有效)',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='bizd房东表';

/*
新建表：增加bizd房东运营情况表
1. 上线之后会有5000+条数据，日后看拓展录入
2. 主要查询sql: select * from bizd_landlord_bussiness where bdLandlordId = {0}
3. 索引: 目前bdLandlordId一个字段有索引
*/
create table bizd_landlord_bussiness
(
   id                   int(11) not null AUTO_INCREMENT COMMENT '主键id',
   bdLandlordId         int(11) comment 'BD房东ID',
   operatingPeriod      int(2) comment '经营年限(参考字典表组名:bizd_operatingPeriod)',
   officeAddress        varchar(125) comment '办公地址',
   centralizeCount      int(5) comment '集中式房间数',
   decentralizeCount    int(5) comment '分散式房间数',
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
   valid                tinyint(1) DEFAULT '1' comment '是否有效(0:无效,1:有效)',
   primary key (id),
   KEY `bdLandlordId` (`bdLandlordId`)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='bizd房东运营情况表';

/*
新建表：增加bizd房东区域关联表
1. 上线之后会有0条数据，日后看拓展录入
2. 主要查询sql: select * from bizd_landlord_district where bdLandlordId = {0}
3. 索引: 目前bdLandlordId一个字段有索引
*/
create table bizd_landlord_district
(
   id                   int(11) not null AUTO_INCREMENT COMMENT '主键id',
   bdLandlordId         int(11) comment 'BD房东ID',
   districtId           int(11) comment '区域ID',
   valid                tinyint(2) DEFAULT '1' comment '是否有效(0:无效,1有效)',
   primary key (id),
   KEY `bdLandlordId` (`bdLandlordId`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='bizd房东区域关联表';

/*
新建表：增加bizd字段表
1. 上线之后会有44条数据，不超过1W条
2. 主要查询sql: select * from bizd_question where paperChannel = {0}
3. 索引: 目前使用ID即可
*/
create table bizd_question
(
   id                   int(11) not null comment 'id' AUTO_INCREMENT COMMENT '主键id',
   paperChannel         varchar(255) comment '使用源',
   field                varchar(255) comment '字段英文名称',
   fieldName            varchar(255) comment '字段显示名称',
   fieldType            varchar(10) comment '问题类型',
   sort                 int(11) comment '排序',
   description          varchar(255) comment '描述',
   level                 int(1) comment '等级',
   qtype                int(2) comment '类型(参考字典表组名:biz_questionType)',
   qcode                varchar(50) comment 'code',
   parentId             int(11) comment 'parentId',
   createBy             int(11) comment '创建人ID',
   createByType         int(2) comment '创建人类型(参考字典表组名:userType)',
   createTime           datetime comment '创建时间',
   updateBy             int(11) comment '修改人ID',
   updateByType         int(2) comment '修改人类型(参考字典表组名:userType)',
   updateTime           datetime comment '修改时间',
   valid                tinyint(1) DEFAULT '1' comment '是否有效(0:无效,1:有效)',
   primary key (id)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='bizd字段表';

/*
新建表：增加bizd字段内容表
1. 上线之后会有0条数据，日后看拓展录入
2. 主要查询sql: select * from bizd_answer where bdLandlordId = {0}
3. 索引: 目前bdLandlordId一个字段有索引
*/
create table bizd_answer
(
   id                   int(11) not null comment 'id' AUTO_INCREMENT COMMENT '主键id',
   bdLandlordId         int(11) comment 'BD房东ID',
   customfield          int(11) comment '房东字段表ID',
   value                varchar(255) comment '内容',
   valid                tinyint(1) DEFAULT '1' comment '是否有效(0:无效,1:有效)',
   primary key (id),
   KEY `bdLandlordId` (`bdLandlordId`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='bizd字段内容表';

/*
新建表：增加bizd房东签约资料表
1. 上线之后会有0条数据，日后看拓展录入，一个房东一条
2. 主要查询sql: select * from bizd_landlord_sign where bdLandlordId = {0}
3. 索引: 目前bdLandlordId一个字段有索引
*/
create table bizd_landlord_sign
(
   id                   int(11) not null AUTO_INCREMENT COMMENT '主键id',
   bdLandlordId         int(11) comment 'BD房东ID',
   picGroupId           int(11) comment '照片',
   createBy             int(11) comment '创建人ID',
   createByType         int(2) comment '创建人类型(参考字典表组名:userType)',
   createTime           datetime comment '创建时间',
   updateBy             int(11) comment '修改人ID',
   updateByType         int(2) comment '修改人类型(参考字典表组名:userType)',
   updateTime           datetime comment '修改时间',
   primary key (id),
   KEY `bdLandlordId` (`bdLandlordId`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='bizd房东签约资料表';


/*
新建表：增加bizd房东跟进表
1. 上线之后会有0条数据，日后看拓展录入，一个房东可以添加多条
2. 主要查询sql: select * from bizd_landlord_followup where bdLandlordId = {0}
3. 索引: 目前bdLandlordId一个字段有索引
*/
create table bizd_landlord_followup
(
   id                   int(11) not null AUTO_INCREMENT COMMENT '主键id',
   bdLandlordId         int(11) comment 'BD房东ID',
   createByOrg          varchar(20) comment '创建人组织',
   status               int(2) comment '房东状态(参考字典表组名:bizd_LandlordStatus)',
   followUpType         int(2) comment '跟进方式(参考字典表组名:bizd_followUpType)',
   content              varchar(255) comment '跟进内容',
   createBy             int(11) comment '创建人ID',
   createByType         int(2) comment '创建人类型(参考字典表组名:userType)',
   createTime           dateTime comment '创建时间',
   valid                tinyint(1) DEFAULT '1' comment '是否有效(0:无效,1:有效)',
   primary key (id),
   KEY `bdLandlordId` (`bdLandlordId`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='bizd房东跟进表';

/*
新建表：增加bizd房东保护表
1. 上线之后会有0条数据，日后看拓展录入，一个房东可以添加多条
2. 主要查询sql: select * from bizd_landlord_protect where bdLandlordId = {0}
3. 索引: 目前bdLandlordId一个字段有索引
*/
create table bizd_landlord_protect
(
   id                   int(11) not null AUTO_INCREMENT COMMENT '主键id',
   bdLandlordId         int(11) comment 'BD房东ID',
   type                 int(2) comment '保护期类型(参考字典表组名:biz_protectType)',
   servicePerson        int(11) comment '服务人',
   planStartDate        date comment '计划保护开始时间',
   planEndDate          date comment '计划保护结束时间',
   actualEndDate        date comment '实际结束时间',
   allDays              int(4) comment '保护期(天)',
   useDays              int(4) comment '使用天数',
   valid                tinyint(1) DEFAULT '1' comment '是否有效(0:无效,1:有效)',
   hasAccount           tinyint(1) comment '是否拥有帐号(0:无,1:有)',
   createBy             int(11) comment '创建人ID',
   createByType         int(2) comment '创建人类型(参考字典表组名:userType)',
   createTime           datetime comment '创建时间',
   primary key (id),
   KEY `bdLandlordId` (`bdLandlordId`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='bizd房东保护表';

/*
新建表：增加bizd房东记录表
1. 上线之后会有0条数据，房东变更记录，一个房东10条。
2. 主要查询sql: select * from bizd_landlord_record where bdLandlordId = {0}
3. 索引: 目前bdLandlordId一个字段有索引
*/
create table bizd_landlord_record
(
   id                   int(11) not null AUTO_INCREMENT COMMENT '主键id',
   bdLandlordId         int(11) comment 'BD房东ID',
   oldStatus            int(2) comment '房东老状态(参考字典表组名:bizd_LandlordStatus)',
   newStatus            int(2) comment '房东新状态(参考字典表组名:bizd_LandlordStatus)',
   oldServicePerson     int(11) comment '老服务人',
   newServicePerson     int(11) comment '新服务人',
   oldOrgId             int(11) comment '老的服务人机构ID',
   newOrgId             int(11) comment '新的服务人机构ID',
   valid                tinyint(1) DEFAULT '1' comment '是否有效(0:无效,1:有效)',
   position	            varchar(10) comment '岗位名称',
   bizType              int(2) comment '操作(参考字典表组名:bizd_bizType)',
   reason               varchar(255) comment '原因',
   allotCount           int(11) comment '分配次数',
   createBy             int(11) comment '创建人ID',
   createByType         int(2) comment '创建人类型(参考字典表组名:userType)',
   createTime           datetime comment '创建时间',
   updateBy             int(11) comment '修改人ID',
   updateByType         int(2) comment '修改人类型(参考字典表组名:userType)',
   updateTime           datetime comment '修改时间',
   isActivation         tinyint(1) comment '是否激活(0:未激活,1:已激活)',
   isOpenAccount        tinyint(1) comment '是否开通帐号(0:未开通,1:已开通)',
   times                int(11) comment '进入公共池的次数',
   primary key (id),
   KEY `bdLandlordId` (`bdLandlordId`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='bizd房东记录表';


