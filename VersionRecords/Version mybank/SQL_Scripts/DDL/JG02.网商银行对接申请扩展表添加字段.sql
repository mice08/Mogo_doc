/*
  网商银行贷款申请扩展表，扩展字段，用于记录申贷时的字段
 */
USE mogoroomdb;

alter table loan_contract_mybank
add column loginId varchar(16) null comment '会员登录帐号，比如支付宝登陆帐号，一般为手机号或邮箱',
add column outMemId int(11) null comment '外部机构定义的客户编号',
add column requestId varchar(16) not null comment '外部流水号',
add column alipayId varchar(16) not null comment '客户的支付宝ID';