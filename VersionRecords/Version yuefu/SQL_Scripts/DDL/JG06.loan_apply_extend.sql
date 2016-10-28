/*创建金融贷款申请扩展表*/
USE mogoroomdb ;

drop table if exists loan_apply_extend;

/*==============================================================*/
/* Table: 房东租金宝申请扩展表                                                                                                                                                               */
/*==============================================================*/
create table loan_apply_extend
(
   id                           int(11) not null auto_increment comment '房东租金宝申请扩展表id',
   contractId            int(11) not null auto_increment comment '房东租金宝申请扩展表id',
   loanType              int(2) comment '贷款服务类型(1:蘑菇宝 2:蘑菇月付)';
   key                        int(11) not null comment '资质对应的房东id',
   value                    int(11) not null comment '房东申请的城市',
   createTime          datetime not null comment '创建时间',
   createBy               int(11) not null comment '创建人',
   createByType       int(1) not null comment '创建人类型(参照字典表组名:userType)',
   primary key (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='房东租金宝申请扩展表';