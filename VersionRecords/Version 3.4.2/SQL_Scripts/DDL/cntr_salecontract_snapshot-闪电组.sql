use mogoroomdb;

drop table if exists cntr_salecontract_snapshot;

/*==============================================================*/
/* Table: cntr_salecontract_snapshot                            */
/*==============================================================*/
create table cntr_salecontract_snapshot
(
   id                   int(11) not null auto_increment comment '合同快照ID',
   contractId           int(11) not null comment '合同ID',
   templetId            int(11) not null comment '合同模板Id',
   params               varchar(1024) comment '签订合同时的合同参数json',
   status               int(1) not null default 1 comment '合同快照状态(0:无效 1:有效)',
   createBy             int(11) not null comment '创建人Id',
   createByType         int(1) not null comment '用户类型(参照groupName=userType)',
   createTime           datetime not null comment '创建时间',
   updateBy             int(11) comment '更新人Id',
   updateByType         int(1) comment '用户类型(参照groupName=userType)',
   updateTime           datetime comment '更新时间',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '合同快照表';


ALTER TABLE cntr_contract_templet ADD COLUMN beginTime DATETIME NOT NULL DEFAULT '2010-01-01 00:00:00' COMMENT '合同模板生效时间';

ALTER TABLE cntr_contract_templet ADD COLUMN endTime DATETIME NOT NULL DEFAULT '2020-12-31 23:59:59' COMMENT '合同模板失效时间';