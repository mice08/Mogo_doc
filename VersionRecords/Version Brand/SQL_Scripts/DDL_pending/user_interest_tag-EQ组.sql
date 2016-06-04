/* �����û���Ϊ��ǩ����Դ������ʷ��¼���û���Ȥ��ǩ�� */
use mogoroomdb;

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
   createTime           datetime not null comment '����ʱ��',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '�û���Ȥ��ǩ��';
