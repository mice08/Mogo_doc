/* �����û���Ϊ��ǩ����Դ������ʷ��¼���û���Ȥ��ǩ�� */
use mogo_da;

drop table if exists user_behavior_tag;

/*==============================================================*/
/* Table: user_behavior_tag                                          */
/*==============================================================*/
create table user_behavior_tag
(
   id                   int(11) not null auto_increment comment '����ID',
   userId               int(11) null comment '�û�ID',
   userType             tinyint(2) null comment '�û�����(�ο��ֵ��groupName=userType)',
   regId                varchar(32) null comment '�������ͱ�ʶID���û�δע��ʱʹ��',
   sourceRecordId       int(11) null comment 'Դ�û���Ϊ��¼������ID',
   sourceRecordCreateTime datetime null comment 'Դ���ݴ���ʱ��',
   channel              tinyint(2) not null comment 'Ƶ����Դ(�ο�groupName=channel)',
   behaviorType         tinyint(1) not null comment '��Ϊ����(1-�����¼ 2-����绰��¼ 3-������¼ 4-�ղؼ�¼ 5-������¼)',
   sourceType           tinyint(2) null comment '�Ƽ���Դ(1:��ҳ�Ƽ� 2:Ʒ�Ʒ�Դ�Ƽ� 3:��Ʒ��Դ�Ƽ� 4:Ը���嵥�Ƽ� 5:����)',
   flatAttrHisId        int(11) not null comment '��Դ������ʷ��¼��id',
   status               tinyint(1) not null comment '״̬(0:��Ч 1:��Ч)',
   createTime           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '�û���Ϊ��ǩ��';



drop table if exists flat_attribute_his;

/*==============================================================*/
/* Table: flat_attribute_his                                          */
/*==============================================================*/
create table flat_attribute_his
(
   id                   int(11) not null auto_increment comment '����ID',
   roomId               int(11) not null comment '����ID',
   cityId               int(11) null comment '����ID',
   districtId           int(11) null comment '������ID',
   businessId           int(11) null comment '��ȦID',
   communityId          int(11) null comment 'С��ID',
   stationIds           varchar(512) comment '����վID���ϣ����ŷָ�',
   roomPrice            decimal(10,2) comment '����۸�',
   flatType              tinyint(1)  COMMENT '��Ԣ����(�ο��ֵ������:flatType)',
   rentType             tinyint(1) comment '���ⷽʽ(1:����Ԣ 2:���� 3:����)',
   bedroomCount         tinyint(2) comment '������(����)',
   area                 double(10,2) comment '���',
   face                 varchar(10) comment '����',
   lng                  double comment '����',
   lat                  double comment 'ά��',
   hasToilet            tinyint(1) comment '�Ƿ����(0:�޶��������� 1:�ж���������)',
   hasBalcony           tinyint(1) comment '�Ƿ�����̨(0:����̨ 1:����̨)',
   hasAircond           tinyint(1) comment '�Ƿ��пյ�(0:�޿յ� 1:�пյ�)',
   status               tinyint(1) not null default 1 comment '״̬(0:��Ч 1:��Ч)',
   createTime           datetime not null default CURRENT_TIMESTAMP  comment '����ʱ��',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '��Դ������ʷ��¼��';



drop table if exists user_interest_tag;

/*==============================================================*/
/* Table: user_interest_tag                                    */
/*==============================================================*/
create table user_interest_tag
(
   id                   int(11) not null auto_increment comment '����ID',
   goodsType            tinyint(1) not null comment '��������(1:��Դ 2:��Ʒ)',
   userId               int(11) comment '�û�Id',
   userType             tinyint(2) comment '�û�����(����groupName=userType)',
   regId                varchar(32) comment '�������ͱ�ʶID���û�δע��ʱʹ��',
   matchRuleId          tinyint(2) comment 'ƥ����Ƽ�����ID',
   detailTags           varchar(2048) comment '��ϸ��Ȥ��ȡֵ��JSON�ַ���',
   priority             int(11) not null comment '��Ȥ�����ȼ���1Ϊ��ߣ�2��֮���Դ����ƣ�',
   status               tinyint(1) not null default 1 comment '״̬(0:��Ч 1:��Ч)',
   createTime           datetime not null default CURRENT_TIMESTAMP  comment '����ʱ��',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '�û���Ȥ��ǩ��';
