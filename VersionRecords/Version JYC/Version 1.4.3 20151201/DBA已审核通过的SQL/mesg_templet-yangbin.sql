/*  Database name `mogoroomdb` ，新消息体系表结构*/
use mogoroomdb;


drop table if exists mesg_templet;
create table mesg_templet
(
   id                   int(11) auto_increment not null comment '消息模板id',
   templetCode          varchar(50) not null comment '消息code，根据code查询模板内容',
   templetName          varchar(100) not null comment '模板名称',
   templetDesc          varchar(300) comment '模板描述',
   status               int(1) not null comment '模板状态，0禁用，1启用',
   createBy             int(11) not null comment '模板创建人',
   createTime           datetime not null comment '模板创建时间',
   createByType         int(2) not null comment '模板创建人类型（参考字典表groupName=userType）',
   updateBy             int(11) comment '模板修改人',
   updateTime           datetime comment '模板修改时间',
   updateByType         int(2) comment '模板修改人类型（参考字典表groupName=userType）',
   valid                int(1) not null comment '删除标志，0删除，1未删除',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息模板表';




drop table if exists mesg_subtemplet;
create table mesg_subtemplet
(
   id                   int(11) auto_increment not null comment '子模板id',
   templetId              int(11) not null comment '消息模板id',
   templetType            int(2) not null comment '类型（参考字典表groupName=templetType，1-短信，2-邮件，3-推送，4-微信）',
   templetContent         varchar(1000) not null comment '模板内容',
   status               int(1) not null comment '模板状态，0禁用，1启用',
   valid                int(1) not null comment '删除标志，0删除，1未删除',
   outTempletId         varchar(64) comment '第三方消息模板id',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息子模板表';




drop table if exists mesg_batch;
create table mesg_batch
(
   id                   int(11) auto_increment not null comment '批次表id',
   batchType            int(2)  null comment '批次类型',
   templetId            int(11) not null comment '模板Id',
   createBy             int(11) not null comment '批次创建人',
   createTime           dateTime not null comment '批次创建时间',
   createByType         int(2) not null comment '批次创建人类型（参考字典表groupName=userType）',
   checkBy              int(11) comment '消息审核人',
   checkTime            datetime comment '审核时间',
   checkByType          int(2) comment '消息审核人类型（参考字典表groupName=userType）',
   checkStatus          int(1) comment '消息审核状态，0审核不通过，1审核通过',
   checkReason          varchar(300) comment '消息审核意见',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息批次表';




drop table if exists mesg_record;
create table mesg_record
(
   id                   int(11) auto_increment not null comment '发送记录id',
   templetId            int(11) not null comment '模板Id',
   mesgParam            varchar(1000) comment '消息参数',
   sendTime             datetime not null comment '计划发送时间',
   receiveBy            int(11) not null comment '接收短信的用户id',
   receiveByType        int(2) not null comment '接收短信的用户类型（参考字典表groupName=userType）',
   createTime           datetime not null comment '短信记录创建时间',
   batchId              int(11) comment '批次id',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发送记录表';




drop table if exists mesg_sms_tocheck;
create table mesg_sms_tocheck
(
   id                   int(11) auto_increment not null comment '短信待审核表id',
   recordId             int(11) not null comment '发送记录表id',
   phoneNum             varchar(11) not null comment '接收短信的手机号码',
   smsContent           varchar(300) not null comment '短信的内容',
   willsendTime         datetime not null comment '短信发送时间',
   createTime           datetime not null comment '短信记录创建时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信待审核表';




drop table if exists mesg_email_tocheck;
create table mesg_email_tocheck
(
   id                   int(11) auto_increment not null comment '邮件待审核表id',
   recordId  int(11) not null comment '发送记录id',
   emailTitle           varchar(50) comment '标题',
   toAddr               varchar(64) not null comment '邮件接收人地址',
   emailContent         varchar(1000) not null comment '邮件内容',
   willSendTime         datetime not null comment '计划发送时间',
   createTime           datetime not null comment '邮件记录创建时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='邮件待审核表';




drop table if exists mesg_push_tocheck;
create table mesg_push_tocheck
(
   id                   int(11) auto_increment not null comment '推送待审核表id',
   recordId         int(11) not null comment '发送记录id',
   pushTitle                varchar(200) comment '标题',
   pushContent          varchar(1000) not null comment '推送内容',
   regId                varchar(50) not null comment '设备编号',
   willsendTime         datetime not null comment '计划发送时间',
   createTime           datetime not null comment '消息创建时间',
   jumpCode             varchar(20) comment '跳转编码',
   jumpValue            varchar(20) comment '跳转值',
   deviceType     	int(2) not null comment '终端设备系统类型（参考字典表groupName=deviceType）',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='推送待审核表';




drop table if exists mesg_sms_tosend;
create table mesg_sms_tosend
(
   id                   int(11) auto_increment not null comment '短信待发送表id',
   recordId         int(11) not null comment '发送记录表id',
   phoneNum             varchar(11) not null comment '接收短信的手机号码',
   smsContent           varchar(300) not null comment '短信的内容',
   willsendTime         datetime not null comment '短信发送时间',
   result             varchar(20) comment '短信发送结果，该结果由短信接口返回',
   sendCount            int(2) comment '短信发送次数',
   reason               varchar(100) comment '发送失败原因',
   sendType             int(1) null comment '发送供应商 0：建周 1：大汉三通',
   createTime           datetime not null comment '短信记录创建时间',
   lastSendTime         datetime comment '短信记录更新时间',
   isSending            int(1) DEFAULT 0 not null comment '是否正在发送 0：没有 1：正在发送',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信待发送表';




drop table if exists mesg_email_tosend;
create table mesg_email_tosend
(
   id                   int(11) auto_increment not null comment '邮件待发送表id',
   recordId             int(11) not null comment '发送记录id',
   emailTitle           varchar(50) comment '标题',
   toAddr               varchar(64) not null comment '邮件接收人地址',
   emailContent         varchar(1000) not null comment '邮件内容',
   willSendTime         datetime not null comment '计划发送时间',
   result               varchar(20) comment '邮件发送结果',
   reason               varchar(50) comment '邮件发送失败原因',
   sendCount            int(2) comment '邮件发送次数',
   createTime           datetime not null comment '邮件记录创建时间',
   lastSendTime         datetime comment '邮件发送记录更新时间',
   isSending            int(1) DEFAULT 0 not null comment '是否正在发送 0：没有 1：正在发送',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='邮件待发送表';




drop table if exists mesg_push_tosend;
create table mesg_push_tosend
(
   id                   int(11) auto_increment not null comment '推送待发送表id',
   recordId         int(11) not null comment '发送记录id',
   pushTitle                varchar(200) comment '标题',
   pushContent          varchar(1000) not null comment '推送内容',
   regId                varchar(50) not null comment '设备编号',
   willsendTime         datetime not null comment '计划发送时间',
   sendStatus           int(1) comment '发送状态',
   sendNum              int(2) comment '消息发送次数',
   reason               varchar(200) comment '发送失败原因',
   createTime           datetime not null comment '消息创建时间',
   jumpCode             varchar(20) comment '跳转编码',
   jumpValue            varchar(20) comment '跳转值',
   lastSendTime         datetime comment '最后一次发送时间',
   isSending            int(1) DEFAULT 0 not null comment '是否正在发送 0：没有 1：正在发送',
   deviceType     	int(2) not null comment '终端设备系统类型（参考字典表groupName=deviceType）',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='推送待发送表';




drop table if exists mesg_sms_record;
create table mesg_sms_record
(
   id                   int(11) auto_increment not null comment '短信记录表id',
   recordId             int(11) not null comment '发送记录表id',
   phoneNum             varchar(11) not null comment '接收短信的手机号码',
   smsContent           varchar(300) not null comment '短信的内容',
   willsendTime         datetime not null comment '短信发送时间',
   result               varchar(20) not null comment '短信发送结果，该结果由短信接口返回',
   sendCount            int(2) not null comment '短信发送次数',
   reason               varchar(100) null comment '发送失败原因',
   sendType             int(1) not null comment '发送供应商 0：建周 1：大汉三通',
   createTime           datetime not null comment '短信记录创建时间',
   lastSendTime         datetime not null comment '短信记录更新时间',
    key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信发送记录表';




drop table if exists mesg_email_record;
create table mesg_email_record
(
   id                   int(11) auto_increment not null comment '邮件记录表id',
   recordId         int(11) not null comment '发送记录id',
   emailTitle                varchar(50) comment '标题',
   toAddr               varchar(64) not null comment '邮件接收人地址',
   emailContent         varchar(1000) not null comment '邮件内容',
   willSendTime         datetime not null comment '计划发送时间',
   result               varchar(20) not null comment '邮件发送结果',
   reason               varchar(50) comment '邮件发送失败原因',
   sendCount            int(2) not null comment '邮件发送次数',
   createTime           datetime not null comment '邮件记录创建时间',
   lastSendTime         datetime not null comment '邮件发送记录更新时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='邮件发送记录表';




drop table if exists mesg_push_record;
create table mesg_push_record
(
   id                   int(11) auto_increment not null comment '推送记录表id',
   recordId             int(11) not null comment '发送记录id',
   pushTitle                varchar(200) comment '标题',
   pushContent          varchar(1000) not null comment '推送内容',
   regId                varchar(50) not null comment '设备编号',
   willsendTime         datetime not null comment '计划发送时间',
   sendStatus           int(1) not null comment '发送状态',
   sendNum              int(2) not null comment '消息发送次数',
   isRead               int(1) not null comment '消息是否读取',
   reason               varchar(200) comment '发送失败原因',
   createTime           datetime not null comment '消息创建时间',
   jumpCode             varchar(20) comment '跳转编码',
   jumpValue            varchar(20) comment '跳转值',
   lastSendTime         datetime not null comment '最后一次发送时间',
   deviceType     	int(2) not null comment '终端设备系统类型（参考字典表groupName=deviceType）',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='推送发送记录表';




drop table if exists user_weixin_info;
create table user_weixin_info
(
   openid               varchar(64) not null comment '用户的唯一标识',
   subscribe            tinyint(1) not null comment '用户是否订阅该公众号标识，值为0时，代表此用户没有关注该公众号，拉取不到其余信息。 ',
   nickName             varchar(64) not null comment '用户昵称',
   sex                  int(1) comment '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
   country              varchar(64) comment '国家，如中国为CN',
   province             varchar(64) comment '用户个人资料填写的省份',
   city                 varchar(64) comment '普通用户个人资料填写的城市',
   headImgUrl           varchar(300) comment '用户头像，最后一个数值代表正方形头像大小（有0、46、64、96、132数值可选，0代表640*640正方形头像），用户没有头像时该项为空。若用户更换头像，原有头像URL将失效。',
   subscribeTime        datetime not null comment '用户关注时间，为时间戳。如果用户曾多次关注，则取最后关注时间 ',
   privilege            varchar(1000) comment '用户特权信息，json 数组，如微信沃卡用户为（chinaunicom）',
   unionid              varchar(64) comment '只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段',
   remark               varchar(200) comment '公众号运营者对粉丝的备注，公众号运营者可在微信公众平台用户管理界面对粉丝添加备注 ',
   unsubscribeTime      datetime comment '用户取消关注时间，为时间戳。如果用户曾多次关注，则取最后关注时间 ',
   primary key (openid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信用户信息表';




drop table if exists user_weixin_bind;
create table user_weixin_bind
(
   id                   int(11) auto_increment not null comment '绑定表id',
   userId               int(11) not null comment '用户id',
   userType              int(1) not null comment '用户类型 参考字典表的groupname=userType',
   openid               varchar(64) not null comment '微信用户关注服务号对应的Id',
   createTime           datetime not null comment 'openId与userId绑定的时间',
   updateTime           datetime comment 'openId与userId更新绑定关系的时间',
   status               tinyint(1) not null comment '1表示绑定，0表示取消绑定',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信蘑菇账号绑定表';




drop table if exists mesg_weixin_callLog;
create table mesg_weixin_callLog
(
   id                   int(11) auto_increment not null comment '明细id',
   phone                varchar(20) not null comment '点击联系的电话号码',
   createTime           datetime not null comment '创建时间',
   urlConvertId         varchar(64) not null comment 'url转换表id',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拨打明细表';




drop table if exists mesg_url_convert;
create table mesg_url_convert
(
   id                   varchar(64) not null comment '转换表ID',
   signTime             bigint not null comment '用于验证签名的时间戳',
   randomNum            varchar(10) not null comment '用于验证签名的随机数串，10位',
   signature            varchar(64) not null comment '签名',
   openid               varchar(64) not null comment '用户openid',
   realUrl              varchar(500) comment '签名认证通过后真实请求的URL地址',
   createTime           datetime not null comment 'URL转换记录创建时间',
   openNum              int(11) not null comment '推送到微信端的消息，点击详情的次数',
   updateTime           datetime comment '最后一次点击详情的时间',
   expireTime           datetime comment '过期时间',
   unionOrderId         varchar(32) not null comment '统一订单id',
   mesgChannel          tinyint not null comment '渠道',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信url转换表';




drop table if exists mesg_weixin_tocheck;
create table mesg_weixin_tocheck
(
   id                   int(11) auto_increment not null comment '微信待审核表id',
   recordId             int(11) not null comment '发送记录id',
   weixinTitle          varchar(200) comment '标题',
   weixinContent        varchar(1000) not null comment '推送内容',
   openId               varchar(64) not null comment '接受者微信openid',
   willsendTime         datetime not null comment '计划发送时间',
   createTime           datetime not null comment '消息创建时间',
   jumpCode             varchar(20) comment '跳转编码',
   jumpValue            varchar(20) comment '跳转值',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信待审核表';




drop table if exists mesg_weixin_tosend;
create table mesg_weixin_tosend
(
   id                   int(11) auto_increment not null comment '微信待发送表id',
   recordId             int(11) not null comment '发送记录id',
   weixinTitle          varchar(200) comment '标题',
   weixinContent        varchar(1000) not null comment '推送内容',
   openId               varchar(64) not null comment '接受者微信openid',
   willsendTime         datetime not null comment '计划发送时间',
   sendStatus           int(1) comment '推送状态',
   sendNum              int(2) comment '消息推送次数',
   sendResult           varchar(200) comment '发送结果',
   createTime           datetime not null comment '消息创建时间',
   jumpCode             varchar(20) comment '跳转编码',
   jumpValue            varchar(20) comment '跳转值',
   lastSendTime         datetime comment '最后一次发送时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信待发送表';




drop table if exists mesg_weixin_record;
create table mesg_weixin_record
(
   id                   int(11) auto_increment not null comment '微信记录表id',
   recordId             int(11) not null comment '发送记录id',
   weixinTitle          varchar(200) comment '标题',
   weixinContent        varchar(1000) not null comment '推送内容',
   openId               varchar(64) not null comment '接受者微信openid',
   willsendTime         datetime not null comment '计划发送时间',
   sendStatus           int(1) not null comment '推送状态',
   sendNum              int(2) not null comment '消息推送次数',
   isRead               int(1) not null comment '消息是否读取',
   sendResult           varchar(200) not null comment '发送结果',
   createTime           datetime not null comment '消息创建时间',
   jumpCode             varchar(20) comment '跳转编码',
   jumpValue            varchar(20) comment '跳转值',
   lastSendTime         datetime not null comment '最后一次发送时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信发送记录表';



