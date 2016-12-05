create table bill_cbfOperLog
(
   id                   int(11) not null auto_increment,
   fundChannel          int(11) not null comment '支付提供商类型 3001 微信 2001 支付宝',
   operType             varchar(32) not null comment '操作类型 1支付 2退款',
   createTime           datetime not null comment '创建时间',
   createBy        int(11) comment '操作人员',
   createByType    int(2) comment '恒定为5-员工',
   bizId           varchar(32) not null comment '业务编号',
   bizType         varchar(10) not null comment '业务类型',
   origOutertradeNo     varchar(32) comment '冻结编号',
   amount          decimal(12,2) comment '金额',
   primary key (id)
);

alter table bill_cbfOperLog comment '回调失败操作日志表';
