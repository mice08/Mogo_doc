/*�����ֵ���չ����ֵ��ǩ������*/
use mogoroomdb;

drop table if exists orga_org_extend;
/*==============================================================*/
/* Table: orga_org_extend                                       */
/*==============================================================*/
create table orga_org_extend
(
   id                   int(11) not null auto_increment comment '�ֵ���չ��id',
   orgId                int(11) not null comment '��Ӧ����֯��id',
   address              varchar(200) comment '�ֵ��ַ',
   telephone            varchar(16) comment '�ֵ�绰',
   bulletin             varchar(1000) comment '����',
   xCoordinates         double comment '����X',
   yCoordinates         double comment '����Y',
   picId                int(11) comment '��ͼID',
   cityId               int(11) comment '���зֵ����ڵĳ���',
   districtId           int(11) comment '�ֵ����ڵĳ���������',
   status               tinyint(1) comment '�ֵ�״̬(0:��Ч 1:��Ч)',
   createBy             int(11) not null comment '������ID',
   createTime           datetime not null comment '����ʱ��',
   createByType         tinyint(2) not null comment '����������(�ο�groupName=userType)',
   updateBy             int(11) comment '�޸���ID',
   updateTime           datetime comment '�޸�ʱ��',
   updateByType         tinyint(2) comment '�޸�������(�ο�groupName=userType)',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '�ֵ���Ϣ��չ��';



drop table if exists orga_tag_relation;
/*==============================================================*/
/* Table: orga_tag_relation                                     */
/*==============================================================*/
create table orga_tag_relation
(
   id                   int(11) not null auto_increment comment 'ID',
   orgId                int(11) not null comment '��֯����ID',
   tagId                int(11) comment '��ǩID',
   status               tinyint(1) comment '��ǩ�ֵ��Ӧ״̬(0:��Ч 1:��Ч)',
   createBy             int(11) comment '������',
   createTime           datetime comment '����ʱ��',
   createByType         tinyint(2) not null comment '����������(�ο�groupName=userType)',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '�ֵ��ǩ������';

/*��Դ�������ֵ�id*/
ALTER TABLE flat_room ADD COLUMN orgId INT(11) COMMENT '��Դ��Ӧ�ķֵ�id';

