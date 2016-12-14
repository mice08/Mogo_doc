/* Database name `mogoroomdb`, 400新系统新表创建 */

use mogoroomdb;

create table tele_extNum
(
   `id`        int(11) not null auto_increment comment '主键ID',
   `phoneNum`        tinyint(1) not null default 0 comment '总机号(0:4009006868 1:4008004949)',
   `extNum`        VARCHAR(10) not null default '0' comment '分机号',
   `phoneType`        tinyint(1) not null default 0 comment '号码类型(0:普通号码 1:保护号码)',
   `startTime`        DATETIME comment '开通时间',
   `suspTime`        DATETIME comment '禁用时间',
   `returnTime`        DATETIME comment '收回时间',
   `valid`        tinyint(1) not null default 1 comment '状态，0为无效，1为有效',
   `status`        int(4) comment '业务状态(0:待售, 1:已售)',
   `createTime`        DATETIME not null default CURRENT_TIMESTAMP comment '创建时间',
   `createBy`        int(11) not null comment '创建人',
   `createByType`        int(11) not null comment '创建人类型(参考字典表组名:userType)',
   `updateTime`        DATETIME default CURRENT_TIMESTAMP comment '修改时间',
   `updateBy`        int(11) comment '修改人',
   `updateByType`        int(11) comment '修改人类型(参考字典表组名:userType)',
   `soDoneCode`        INT(32) comment '操作流水号',
   `remark`        VARCHAR(255) comment '备注',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='分机号表';

create table tele_sungoin_navi
(
   `id`        int(11) not null auto_increment comment '主键ID',
   `extNumId`        int(11) not null default 0 comment '分机号Id',
   `naviId`        VARCHAR(255) not null comment '导航Id(第三方系统数据)',
   `parentId`        int(11) not null default 0 comment '父导航Id(0表示根导航)',
   `ivrKey`        VARCHAR(10) comment '导航键(第三方系统数据)',
   `ivrName`        VARCHAR(50) comment '导航名(第三方系统数据)',
   `hasChild`        tinyint(1) not null default 0 comment '是否有下级导航(0:无 1有)',
   `ringLsh`        VARCHAR(255) comment '导航彩铃流水号(第三方系统数据)',
   `valid`        tinyint(1) not null default 1 comment '状态，0为无效，1为有效',
   `status`        int(4) comment '业务状态',
   `createTime`        DATETIME not null default CURRENT_TIMESTAMP comment '创建时间',
   `createBy`        int(11) not null comment '创建人',
   `createByType`        int(11) not null comment '创建人类型(参考字典表组名:userType)',
   `updateTime`        DATETIME default CURRENT_TIMESTAMP comment '修改时间',
   `updateBy`        int(11) comment '修改人',
   `updateByType`        int(11) comment '修改人类型(参考字典表组名:userType)',
   `soDoneCode`        INT(32) comment '操作流水号',
   `remark`        VARCHAR(255) comment '备注',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='400导航表';

create table tele_sungoin_seat
(
   `id`        int(11) not null auto_increment comment '主键ID',
   `naviId`        int(11) not null default 0 comment '导航Id',
   `seatId`        VARCHAR(128) not null comment '坐席Id(第三方系统数据)',
   `userId`        VARCHAR(128) not null comment '用户Id(第三方系统数据)',
   `seatType`        VARCHAR(10) not null default '1' comment '坐席类型(0为外呼坐席，1为接听坐席，01两者皆是)',
   `cntctName`        VARCHAR(50) not null comment '姓名(第三方系统数据)',
   `phone`        VARCHAR(20) not null comment '绑定号码(第三方系统数据)',
   `userCode`        VARCHAR(20) comment '工号(第三方系统数据)',
   `password`        VARCHAR(255) comment '密码(第三方系统数据)',
   `valid`        tinyint(1) not null default 1 comment '状态，0为无效，1为有效',
   `status`        int(4) comment '业务状态',
   `createTime`        DATETIME not null default CURRENT_TIMESTAMP comment '创建时间',
   `createBy`        int(11) not null comment '创建人',
   `createByType`        int(11) not null comment '创建人类型(参考字典表组名:userType)',
   `updateTime`        DATETIME default CURRENT_TIMESTAMP comment '修改时间',
   `updateBy`        int(11) comment '修改人',
   `updateByType`        int(11) comment '修改人类型(参考字典表组名:userType)',
   `soDoneCode`        INT(32) comment '操作流水号',
   `remark`        VARCHAR(255) comment '备注',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='400坐席表';

create table tele_ext_usr_rel
(
   `id`        int(11) not null auto_increment comment '主键ID',
   `extNumId`        int(11) not null default 0 comment '分机号Id',
   `userId`        int(11) not null default 0 comment '用户Id',
   `userType`        int(11) not null default 0 comment '用户类型(参考字典表组名:userType)',
   `ctctId`        int(11) default 0 comment '联系人Id',
   `ctctIdSource`        tinyint(1) default 3 comment '联系人来源(参考字典表组名:userType 0:房东,1:联系人,5:员工)',
   `empId`        int(11) comment '推广员工Id',
   `empGrupCode`        varchar(40) comment '推广组Code(参考字典表组名:saleGroup)',
   `seatId`        int(11) default 0 comment '坐席Id',
   `valid`        tinyint(1) not null default 1 comment '状态，0为无效，1为有效',
   `status`        tinyint(1) default 0 comment '业务状态(0:已启用, 1:已停用)',
   `createTime`        DATETIME not null default CURRENT_TIMESTAMP comment '创建时间',
   `createBy`        int(11) not null comment '创建人',
   `createByType`        int(11) not null comment '创建人类型(参考字典表组名:userType)',
   `updateTime`        DATETIME default CURRENT_TIMESTAMP comment '修改时间',
   `updateBy`        int(11) comment '修改人',
   `updateByType`        int(11) comment '修改人类型(参考字典表组名:userType)',
   `soDoneCode`        INT(32) comment '操作流水号',
   `remark`        VARCHAR(255) comment '备注',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='分机用户关系表';

create table tele_ext_usr_rel_his
(
   `id`        int(11) not null auto_increment comment '主键ID',
   `relId`        int(11) not null comment '关系表主键ID',
   `extNumId`        int(11) not null default 0 comment '分机号Id',
   `userId`        int(11) not null default 0 comment '用户Id',
   `userType`        int(11) not null default 0 comment '用户类型(参考字典表组名:userType)',
   `ctctId`        int(11) default 0 comment '联系人Id',
   `ctctIdSource`        tinyint(1) default 1 comment '联系人来源(参考字典表组名:userType 0:房东,1:联系人,5:员工)',
   `empId`        int(11) comment '推广员工Id',
   `empGrupCode`        varchar(40) comment '推广组Code(参考字典表组名:saleGroup)',
   `seatId`        int(11) default 0 comment '坐席Id',
   `valid`        tinyint(1) not null default 1 comment '状态，0为无效，1为有效',
   `status`        tinyint(1) default 0 comment '业务状态(0:已启用, 1:已停用)',
   `createTime`        DATETIME not null default CURRENT_TIMESTAMP comment '创建时间',
   `createBy`        int(11) not null comment '创建人',
   `createByType`        int(11) not null comment '创建人类型(参考字典表组名:userType)',
   `updateTime`        DATETIME default CURRENT_TIMESTAMP comment '修改时间',
   `updateBy`        int(11) comment '修改人',
   `updateByType`        int(11) comment '修改人类型(参考字典表组名:userType)',
   `soDoneCode`        INT(32) comment '操作流水号',
   `remark`        VARCHAR(255) comment '备注',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='分机用户关系历史记录表';

create table tele_price
(
   `id`        int(11) not null auto_increment comment '主键ID',
   `extNumId`        int(11) not null default 0 comment '分机号Id',
   `extNum`        VARCHAR(10) not null default '0' comment '分机号',
   `priceJson`        varchar(1024) comment '价格JSON',
   `valid`        tinyint(1) not null default 1 comment '状态，0为无效，1为有效',
   `status`        int(4) comment '业务状态',
   `createTime`        DATETIME not null default CURRENT_TIMESTAMP comment '创建时间',
   `createBy`        int(11) not null comment '创建人',
   `createByType`        int(11) not null comment '创建人类型(参考字典表组名:userType)',
   `updateTime`        DATETIME default CURRENT_TIMESTAMP comment '修改时间',
   `updateBy`        int(11) comment '修改人',
   `updateByType`        int(11) comment '修改人类型(参考字典表组名:userType)',
   `soDoneCode`        INT(32) comment '操作流水号',
   `remark`        VARCHAR(255) comment '备注',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='分机价格表';

create table tele_callLog
(
   `id`        int(11) not null auto_increment comment '主键ID',
   `extNumId`        int(11) comment '分机号Id',
   `extNum`        VARCHAR(10) comment '分机号',
   `userId`        int(11) comment '用户Id',
   `userType`        int(11) comment '用户类型(参考字典表组名:userType)',
   `answed`        tinyint(1) not null default 0 comment '已接未接 (0: 未接, 1:已接)',
   `callerProv`        VARCHAR(20) comment '主叫归属省',
   `callerCity`        VARCHAR(20) comment '主叫归属市',
   `thrdPtyInfoId`        int(11) not null default 0 comment '第三方信息Id',
   `thrdPtyInfoType`        tinyint(1) not null default 0 comment '第三方信息Type (0: 尚景)',
   `valid`        tinyint(1) not null default 1 comment '状态，0为无效，1为有效',
   `status`        int(4) comment '业务状态',
   `createTime`        DATETIME not null default CURRENT_TIMESTAMP comment '创建时间',
   `createBy`        int(11) not null comment '创建人',
   `createByType`        int(11) not null comment '创建人类型(参考字典表组名:userType)',
   `updateTime`        DATETIME default CURRENT_TIMESTAMP comment '修改时间',
   `updateBy`        int(11) comment '修改人',
   `updateByType`        int(11) comment '修改人类型(参考字典表组名:userType)',
   `soDoneCode`        INT(32) comment '操作流水号',
   `remark`        VARCHAR(255) comment '备注',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='400拨打记录表';

create table tele_sungoin_callLog
(
   `id`        int(11) not null auto_increment comment '主键ID',
   `callerNo`        VARCHAR(20) not null comment '主叫号码(第三方系统数据)',
   `ivrName`        VARCHAR(50) not null comment '呼入导航名(第三方系统数据)',
   `linkman`        VARCHAR(50) comment '联系人(第三方系统数据)',
   `seatName`        VARCHAR(50) comment '已接坐席名(第三方系统数据)',
   `comeTime`        DATETIME not null comment '呼入时间(第三方系统数据)',
   `startTime`        DATETIME comment '接听时间(第三方系统数据)',
   `hangTime`        DATETIME not null comment '结束时间(第三方系统数据)',
   `talkInterval`        VARCHAR(100) comment '应扣时长(第三方系统数据)',
   `minutes`        VARCHAR(100) comment '通话时长(第三方系统数据)',
   `callerLoc`        VARCHAR(100) comment '用户归属地(第三方系统数据)',
   `lsh`        VARCHAR(100) comment '流水号(第三方系统数据)',
   `callVoiceUrl`        VARCHAR(255) comment '电话录音Url(第三方系统数据)',
   `valid`        tinyint(1) not null default 1 comment '状态，0为无效，1为有效',
   `status`        int(4) comment '业务状态',
   `createTime`        DATETIME not null default CURRENT_TIMESTAMP comment '创建时间',
   `createBy`        int(11) not null comment '创建人',
   `createByType`        int(11) not null comment '创建人类型(参考字典表组名:userType)',
   `updateTime`        DATETIME default CURRENT_TIMESTAMP comment '修改时间',
   `updateBy`        int(11) comment '修改人',
   `updateByType`        int(11) comment '修改人类型(参考字典表组名:userType)',
   `soDoneCode`        INT(32) comment '操作流水号',
   `remark`        VARCHAR(255) comment '备注',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='通话记录第三方信息表';
