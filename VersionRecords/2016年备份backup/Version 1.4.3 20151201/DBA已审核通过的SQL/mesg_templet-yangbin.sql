/*  Database name `mogoroomdb` ������Ϣ��ϵ��ṹ*/
use mogoroomdb;


drop table if exists mesg_templet;
create table mesg_templet
(
   id                   int(11) auto_increment not null comment '��Ϣģ��id',
   templetCode          varchar(50) not null comment '��Ϣcode������code��ѯģ������',
   templetName          varchar(100) not null comment 'ģ������',
   templetDesc          varchar(300) comment 'ģ������',
   status               int(1) not null comment 'ģ��״̬��0���ã�1����',
   createBy             int(11) not null comment 'ģ�崴����',
   createTime           datetime not null comment 'ģ�崴��ʱ��',
   createByType         int(2) not null comment 'ģ�崴�������ͣ��ο��ֵ��groupName=userType��',
   updateBy             int(11) comment 'ģ���޸���',
   updateTime           datetime comment 'ģ���޸�ʱ��',
   updateByType         int(2) comment 'ģ���޸������ͣ��ο��ֵ��groupName=userType��',
   valid                int(1) not null comment 'ɾ����־��0ɾ����1δɾ��',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ϣģ���';




drop table if exists mesg_subtemplet;
create table mesg_subtemplet
(
   id                   int(11) auto_increment not null comment '��ģ��id',
   templetId              int(11) not null comment '��Ϣģ��id',
   templetType            int(2) not null comment '���ͣ��ο��ֵ��groupName=templetType��1-���ţ�2-�ʼ���3-���ͣ�4-΢�ţ�',
   templetContent         varchar(1000) not null comment 'ģ������',
   status               int(1) not null comment 'ģ��״̬��0���ã�1����',
   valid                int(1) not null comment 'ɾ����־��0ɾ����1δɾ��',
   outTempletId         varchar(64) comment '��������Ϣģ��id',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ϣ��ģ���';




drop table if exists mesg_batch;
create table mesg_batch
(
   id                   int(11) auto_increment not null comment '���α�id',
   batchType            int(2)  null comment '��������',
   templetId            int(11) not null comment 'ģ��Id',
   createBy             int(11) not null comment '���δ�����',
   createTime           dateTime not null comment '���δ���ʱ��',
   createByType         int(2) not null comment '���δ��������ͣ��ο��ֵ��groupName=userType��',
   checkBy              int(11) comment '��Ϣ�����',
   checkTime            datetime comment '���ʱ��',
   checkByType          int(2) comment '��Ϣ��������ͣ��ο��ֵ��groupName=userType��',
   checkStatus          int(1) comment '��Ϣ���״̬��0��˲�ͨ����1���ͨ��',
   checkReason          varchar(300) comment '��Ϣ������',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ϣ���α�';




drop table if exists mesg_record;
create table mesg_record
(
   id                   int(11) auto_increment not null comment '���ͼ�¼id',
   templetId            int(11) not null comment 'ģ��Id',
   mesgParam            varchar(1000) comment '��Ϣ����',
   sendTime             datetime not null comment '�ƻ�����ʱ��',
   receiveBy            int(11) not null comment '���ն��ŵ��û�id',
   receiveByType        int(2) not null comment '���ն��ŵ��û����ͣ��ο��ֵ��groupName=userType��',
   createTime           datetime not null comment '���ż�¼����ʱ��',
   batchId              int(11) comment '����id',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���ͼ�¼��';




drop table if exists mesg_sms_tocheck;
create table mesg_sms_tocheck
(
   id                   int(11) auto_increment not null comment '���Ŵ���˱�id',
   recordId             int(11) not null comment '���ͼ�¼��id',
   phoneNum             varchar(11) not null comment '���ն��ŵ��ֻ�����',
   smsContent           varchar(300) not null comment '���ŵ�����',
   willsendTime         datetime not null comment '���ŷ���ʱ��',
   createTime           datetime not null comment '���ż�¼����ʱ��',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���Ŵ���˱�';




drop table if exists mesg_email_tocheck;
create table mesg_email_tocheck
(
   id                   int(11) auto_increment not null comment '�ʼ�����˱�id',
   recordId  int(11) not null comment '���ͼ�¼id',
   emailTitle           varchar(50) comment '����',
   toAddr               varchar(64) not null comment '�ʼ������˵�ַ',
   emailContent         varchar(1000) not null comment '�ʼ�����',
   willSendTime         datetime not null comment '�ƻ�����ʱ��',
   createTime           datetime not null comment '�ʼ���¼����ʱ��',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�ʼ�����˱�';




drop table if exists mesg_push_tocheck;
create table mesg_push_tocheck
(
   id                   int(11) auto_increment not null comment '���ʹ���˱�id',
   recordId         int(11) not null comment '���ͼ�¼id',
   pushTitle                varchar(200) comment '����',
   pushContent          varchar(1000) not null comment '��������',
   regId                varchar(50) not null comment '�豸���',
   willsendTime         datetime not null comment '�ƻ�����ʱ��',
   createTime           datetime not null comment '��Ϣ����ʱ��',
   jumpCode             varchar(20) comment '��ת����',
   jumpValue            varchar(20) comment '��תֵ',
   deviceType     	int(2) not null comment '�ն��豸ϵͳ���ͣ��ο��ֵ��groupName=deviceType��',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���ʹ���˱�';




drop table if exists mesg_sms_tosend;
create table mesg_sms_tosend
(
   id                   int(11) auto_increment not null comment '���Ŵ����ͱ�id',
   recordId         int(11) not null comment '���ͼ�¼��id',
   phoneNum             varchar(11) not null comment '���ն��ŵ��ֻ�����',
   smsContent           varchar(300) not null comment '���ŵ�����',
   willsendTime         datetime not null comment '���ŷ���ʱ��',
   result             varchar(20) comment '���ŷ��ͽ�����ý���ɶ��Žӿڷ���',
   sendCount            int(2) comment '���ŷ��ʹ���',
   reason               varchar(100) comment '����ʧ��ԭ��',
   sendType             int(1) null comment '���͹�Ӧ�� 0������ 1������ͨ',
   createTime           datetime not null comment '���ż�¼����ʱ��',
   lastSendTime         datetime comment '���ż�¼����ʱ��',
   isSending            int(1) DEFAULT 0 not null comment '�Ƿ����ڷ��� 0��û�� 1�����ڷ���',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���Ŵ����ͱ�';




drop table if exists mesg_email_tosend;
create table mesg_email_tosend
(
   id                   int(11) auto_increment not null comment '�ʼ������ͱ�id',
   recordId             int(11) not null comment '���ͼ�¼id',
   emailTitle           varchar(50) comment '����',
   toAddr               varchar(64) not null comment '�ʼ������˵�ַ',
   emailContent         varchar(1000) not null comment '�ʼ�����',
   willSendTime         datetime not null comment '�ƻ�����ʱ��',
   result               varchar(20) comment '�ʼ����ͽ��',
   reason               varchar(50) comment '�ʼ�����ʧ��ԭ��',
   sendCount            int(2) comment '�ʼ����ʹ���',
   createTime           datetime not null comment '�ʼ���¼����ʱ��',
   lastSendTime         datetime comment '�ʼ����ͼ�¼����ʱ��',
   isSending            int(1) DEFAULT 0 not null comment '�Ƿ����ڷ��� 0��û�� 1�����ڷ���',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�ʼ������ͱ�';




drop table if exists mesg_push_tosend;
create table mesg_push_tosend
(
   id                   int(11) auto_increment not null comment '���ʹ����ͱ�id',
   recordId         int(11) not null comment '���ͼ�¼id',
   pushTitle                varchar(200) comment '����',
   pushContent          varchar(1000) not null comment '��������',
   regId                varchar(50) not null comment '�豸���',
   willsendTime         datetime not null comment '�ƻ�����ʱ��',
   sendStatus           int(1) comment '����״̬',
   sendNum              int(2) comment '��Ϣ���ʹ���',
   reason               varchar(200) comment '����ʧ��ԭ��',
   createTime           datetime not null comment '��Ϣ����ʱ��',
   jumpCode             varchar(20) comment '��ת����',
   jumpValue            varchar(20) comment '��תֵ',
   lastSendTime         datetime comment '���һ�η���ʱ��',
   isSending            int(1) DEFAULT 0 not null comment '�Ƿ����ڷ��� 0��û�� 1�����ڷ���',
   deviceType     	int(2) not null comment '�ն��豸ϵͳ���ͣ��ο��ֵ��groupName=deviceType��',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���ʹ����ͱ�';




drop table if exists mesg_sms_record;
create table mesg_sms_record
(
   id                   int(11) auto_increment not null comment '���ż�¼��id',
   recordId             int(11) not null comment '���ͼ�¼��id',
   phoneNum             varchar(11) not null comment '���ն��ŵ��ֻ�����',
   smsContent           varchar(300) not null comment '���ŵ�����',
   willsendTime         datetime not null comment '���ŷ���ʱ��',
   result               varchar(20) not null comment '���ŷ��ͽ�����ý���ɶ��Žӿڷ���',
   sendCount            int(2) not null comment '���ŷ��ʹ���',
   reason               varchar(100) null comment '����ʧ��ԭ��',
   sendType             int(1) not null comment '���͹�Ӧ�� 0������ 1������ͨ',
   createTime           datetime not null comment '���ż�¼����ʱ��',
   lastSendTime         datetime not null comment '���ż�¼����ʱ��',
    key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���ŷ��ͼ�¼��';




drop table if exists mesg_email_record;
create table mesg_email_record
(
   id                   int(11) auto_increment not null comment '�ʼ���¼��id',
   recordId         int(11) not null comment '���ͼ�¼id',
   emailTitle                varchar(50) comment '����',
   toAddr               varchar(64) not null comment '�ʼ������˵�ַ',
   emailContent         varchar(1000) not null comment '�ʼ�����',
   willSendTime         datetime not null comment '�ƻ�����ʱ��',
   result               varchar(20) not null comment '�ʼ����ͽ��',
   reason               varchar(50) comment '�ʼ�����ʧ��ԭ��',
   sendCount            int(2) not null comment '�ʼ����ʹ���',
   createTime           datetime not null comment '�ʼ���¼����ʱ��',
   lastSendTime         datetime not null comment '�ʼ����ͼ�¼����ʱ��',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�ʼ����ͼ�¼��';




drop table if exists mesg_push_record;
create table mesg_push_record
(
   id                   int(11) auto_increment not null comment '���ͼ�¼��id',
   recordId             int(11) not null comment '���ͼ�¼id',
   pushTitle                varchar(200) comment '����',
   pushContent          varchar(1000) not null comment '��������',
   regId                varchar(50) not null comment '�豸���',
   willsendTime         datetime not null comment '�ƻ�����ʱ��',
   sendStatus           int(1) not null comment '����״̬',
   sendNum              int(2) not null comment '��Ϣ���ʹ���',
   isRead               int(1) not null comment '��Ϣ�Ƿ��ȡ',
   reason               varchar(200) comment '����ʧ��ԭ��',
   createTime           datetime not null comment '��Ϣ����ʱ��',
   jumpCode             varchar(20) comment '��ת����',
   jumpValue            varchar(20) comment '��תֵ',
   lastSendTime         datetime not null comment '���һ�η���ʱ��',
   deviceType     	int(2) not null comment '�ն��豸ϵͳ���ͣ��ο��ֵ��groupName=deviceType��',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���ͷ��ͼ�¼��';




drop table if exists user_weixin_info;
create table user_weixin_info
(
   openid               varchar(64) not null comment '�û���Ψһ��ʶ',
   subscribe            tinyint(1) not null comment '�û��Ƿ��ĸù��ںű�ʶ��ֵΪ0ʱ��������û�û�й�ע�ù��ںţ���ȡ����������Ϣ�� ',
   nickName             varchar(64) not null comment '�û��ǳ�',
   sex                  int(1) comment '�û����Ա�ֵΪ1ʱ�����ԣ�ֵΪ2ʱ��Ů�ԣ�ֵΪ0ʱ��δ֪',
   country              varchar(64) comment '���ң����й�ΪCN',
   province             varchar(64) comment '�û�����������д��ʡ��',
   city                 varchar(64) comment '��ͨ�û�����������д�ĳ���',
   headImgUrl           varchar(300) comment '�û�ͷ�����һ����ֵ����������ͷ���С����0��46��64��96��132��ֵ��ѡ��0����640*640������ͷ�񣩣��û�û��ͷ��ʱ����Ϊ�ա����û�����ͷ��ԭ��ͷ��URL��ʧЧ��',
   subscribeTime        datetime not null comment '�û���עʱ�䣬Ϊʱ���������û�����ι�ע����ȡ����עʱ�� ',
   privilege            varchar(1000) comment '�û���Ȩ��Ϣ��json ���飬��΢���ֿ��û�Ϊ��chinaunicom��',
   unionid              varchar(64) comment 'ֻ�����û������ںŰ󶨵�΢�ſ���ƽ̨�ʺź󣬲Ż���ָ��ֶ�',
   remark               varchar(200) comment '���ں���Ӫ�߶Է�˿�ı�ע�����ں���Ӫ�߿���΢�Ź���ƽ̨�û��������Է�˿��ӱ�ע ',
   unsubscribeTime      datetime comment '�û�ȡ����עʱ�䣬Ϊʱ���������û�����ι�ע����ȡ����עʱ�� ',
   primary key (openid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='΢���û���Ϣ��';




drop table if exists user_weixin_bind;
create table user_weixin_bind
(
   id                   int(11) auto_increment not null comment '�󶨱�id',
   userId               int(11) not null comment '�û�id',
   userType              int(1) not null comment '�û����� �ο��ֵ���groupname=userType',
   openid               varchar(64) not null comment '΢���û���ע����Ŷ�Ӧ��Id',
   createTime           datetime not null comment 'openId��userId�󶨵�ʱ��',
   updateTime           datetime comment 'openId��userId���°󶨹�ϵ��ʱ��',
   status               tinyint(1) not null comment '1��ʾ�󶨣�0��ʾȡ����',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='΢��Ģ���˺Ű󶨱�';




drop table if exists mesg_weixin_callLog;
create table mesg_weixin_callLog
(
   id                   int(11) auto_increment not null comment '��ϸid',
   phone                varchar(20) not null comment '�����ϵ�ĵ绰����',
   createTime           datetime not null comment '����ʱ��',
   urlConvertId         varchar(64) not null comment 'urlת����id',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������ϸ��';




drop table if exists mesg_url_convert;
create table mesg_url_convert
(
   id                   varchar(64) not null comment 'ת����ID',
   signTime             bigint not null comment '������֤ǩ����ʱ���',
   randomNum            varchar(10) not null comment '������֤ǩ�������������10λ',
   signature            varchar(64) not null comment 'ǩ��',
   openid               varchar(64) not null comment '�û�openid',
   realUrl              varchar(500) comment 'ǩ����֤ͨ������ʵ�����URL��ַ',
   createTime           datetime not null comment 'URLת����¼����ʱ��',
   openNum              int(11) not null comment '���͵�΢�Ŷ˵���Ϣ���������Ĵ���',
   updateTime           datetime comment '���һ�ε�������ʱ��',
   expireTime           datetime comment '����ʱ��',
   unionOrderId         varchar(32) not null comment 'ͳһ����id',
   mesgChannel          tinyint not null comment '����',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='΢��urlת����';




drop table if exists mesg_weixin_tocheck;
create table mesg_weixin_tocheck
(
   id                   int(11) auto_increment not null comment '΢�Ŵ���˱�id',
   recordId             int(11) not null comment '���ͼ�¼id',
   weixinTitle          varchar(200) comment '����',
   weixinContent        varchar(1000) not null comment '��������',
   openId               varchar(64) not null comment '������΢��openid',
   willsendTime         datetime not null comment '�ƻ�����ʱ��',
   createTime           datetime not null comment '��Ϣ����ʱ��',
   jumpCode             varchar(20) comment '��ת����',
   jumpValue            varchar(20) comment '��תֵ',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='΢�Ŵ���˱�';




drop table if exists mesg_weixin_tosend;
create table mesg_weixin_tosend
(
   id                   int(11) auto_increment not null comment '΢�Ŵ����ͱ�id',
   recordId             int(11) not null comment '���ͼ�¼id',
   weixinTitle          varchar(200) comment '����',
   weixinContent        varchar(1000) not null comment '��������',
   openId               varchar(64) not null comment '������΢��openid',
   willsendTime         datetime not null comment '�ƻ�����ʱ��',
   sendStatus           int(1) comment '����״̬',
   sendNum              int(2) comment '��Ϣ���ʹ���',
   sendResult           varchar(200) comment '���ͽ��',
   createTime           datetime not null comment '��Ϣ����ʱ��',
   jumpCode             varchar(20) comment '��ת����',
   jumpValue            varchar(20) comment '��תֵ',
   lastSendTime         datetime comment '���һ�η���ʱ��',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='΢�Ŵ����ͱ�';




drop table if exists mesg_weixin_record;
create table mesg_weixin_record
(
   id                   int(11) auto_increment not null comment '΢�ż�¼��id',
   recordId             int(11) not null comment '���ͼ�¼id',
   weixinTitle          varchar(200) comment '����',
   weixinContent        varchar(1000) not null comment '��������',
   openId               varchar(64) not null comment '������΢��openid',
   willsendTime         datetime not null comment '�ƻ�����ʱ��',
   sendStatus           int(1) not null comment '����״̬',
   sendNum              int(2) not null comment '��Ϣ���ʹ���',
   isRead               int(1) not null comment '��Ϣ�Ƿ��ȡ',
   sendResult           varchar(200) not null comment '���ͽ��',
   createTime           datetime not null comment '��Ϣ����ʱ��',
   jumpCode             varchar(20) comment '��ת����',
   jumpValue            varchar(20) comment '��תֵ',
   lastSendTime         datetime not null comment '���һ�η���ʱ��',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='΢�ŷ��ͼ�¼��';



