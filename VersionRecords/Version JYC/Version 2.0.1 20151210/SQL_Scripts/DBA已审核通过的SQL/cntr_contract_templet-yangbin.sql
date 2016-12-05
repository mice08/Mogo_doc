/*  Database name `mogoroomdb` ，新合同体系相关表*/ 
use mogoroomdb; 
 

drop table if exists cntr_contract_templet;
create table cntr_contract_templet
(
   id                   int(11) not null auto_increment comment '主键',
   cityId               int(11) not null comment '城市ID',
   landlordId           int(11) null comment '房东ID',
   rentType             tinyint(1) comment '出租类型(1自营2合租3整租)',
   templetName          varchar(20) not null comment '合同模板名称',
   templetCode          varchar(20) not null comment '合同模板编码',
   templetPath          varchar(200) not null comment '模板文件路径',
   status               tinyint(1) not null comment '状态,0无效1有效',
   createTime           datetime not null comment '创建时间',
   createBy             int(11) not null comment '创建人',
   createByType         tinyint(2) not null comment '创建人类型，参考字典表的groupName=userType',
   updateTime           datetime comment '修改时间',
   updateBy             int(11) comment '修改人',
   updateByType         tinyint(2) comment '修改人类型，参考字典表的groupName=userType',
   lang                 tinyint(2) not null comment '语言类型，参考字典表的groupName=langType',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合同模板表';



drop table if exists cntr_contract_clause;
create table cntr_contract_clause
(
   id                   int(11) not null auto_increment comment '主键',
   landlordId           int(11) not null comment '房东ID',
   clauseName           varchar(100) not null comment '附加条款名称（选择用，不显示在合同上）',
   clauseCode           varchar(20) not null comment '附加条款编码，英文编码',
   clauseType           varchar(100) not null comment '附加条款类型（显示在合同上）',
   clauseContent        varchar(500) not null comment '附加条款内容（显示在合同上）',
   status               int(2) not null comment '状态,0无效1有效',
   createTime           datetime not null comment '创建时间',
   createBy             int(11) not null comment '创建人',
   createByType         varchar(50) not null comment '创建人类型，参考字典表的groupName=userType',
   updateTime           datetime comment '修改时间',
   updateBy             int(11) comment '修改人',
   updateByType         varchar(50) comment '修改人类型，参考字典表的groupName=userType',
   lang                 tinyint(2) not null comment '语言类型，参考字典表的groupName=langType',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合同附加条款表';



drop table if exists cntr_contract_templet_clause_rel;
create table cntr_contract_templet_clause_rel
(
   id                   int(11) not null auto_increment comment '主键',
   contractId           int(11) not null comment '合同ID',
   contractVersionId    int(11) null comment '历史合同版本号',
   templetId            int(11) not null comment '合同模板ID',
   clauseId             int(11) null comment '附加条款ID',
   status               int(2) not null comment '状态,0无效1有效',
   createTime           datetime not null comment '创建时间',
   createBy             int(11) not null comment '创建人',
   createByType         varchar(50) not null comment '创建人类型，参考字典表的groupName=userType',
   updateTime           datetime comment '修改时间',
   updateBy             int(11) comment '修改人',
   updateByType         varchar(50) comment '修改人类型，参考字典表的groupName=userType',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合同模板条款关联表';



drop table if exists cntr_salecontract_version;
create table cntr_salecontract_version
(
   versionId            int(11) not null auto_increment comment '主键ID',
   contractId           int(11) comment '合同ID',
   contractAutoNum      varchar(32) comment '合同编号(自动)',
   contractOffNum       varchar(32) comment '合同编号(线下)',
   flatsId              int(11) comment '签约公寓ID',
   roomId               int(11) comment '签约房间ID',
   renterId             int(11) comment '租客ID',
   landlordId           int(11) comment '职业房东ID',
   contractType         int(11) comment '合同类型(1.蘑菇宝2.非蘑菇宝)',
   sourceRentPrice      double comment '签约月租金价格(原价)',
   realRentPrice        double comment '签约月租金价格(实际价)',
   status               int(11) comment '合同状态(枚举)',
   beginDate            datetime comment '合同开始日期(起租日)',
   endDate              datetime comment '合同结束日期',
   loseEfficacyDate     datetime comment '合同失效日期',
   leaseTerm            int(11) comment '租期',
   signingDate          datetime comment '签约日期',
   rentPayType          int(11) comment '租金付款方式',
   contractRemark       varchar(500) comment '合同备注',
   idPhotoUrl           varchar(128) comment '合同证件照路径',
   createTime           datetime comment '创建时间',
   effectiveTime        timestamp comment '有效时间',
   emergencyContact     varchar(30) comment '紧急联系人',
   emergencyContactPhone varchar(30) comment '紧急联系人电话号码',
   emergencyContactAddress varchar(70) comment '紧急联系人地址',
   turnStrtus           int(11) comment '0非转客1转客2客人同意3客人不同意',
   payDate              int(2) comment '每期付款日',
   fileName             varchar(128) comment '合同文件名称',
   billclear            int(2) not null comment '账单是否已清',
   agencyFee            decimal(10,0) comment '中介费',
   manageFee            decimal(10,0) comment '管理费',
   butlerName           varchar(20) comment '管家姓名',
   templetParams        varchar(500) comment '合同模板参数(json格式)',
   primary key (versionId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售合同历史表';
