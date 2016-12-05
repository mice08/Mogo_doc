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
   cityId               int(11) comment '�ֵ����ڵĳ���',
   districtId           int(11) comment '�ֵ����ڵĳ���������',
   address              varchar(200) comment '�ֵ��ַ',
   xCoordinate          double comment '����X',
   yCoordinate          double comment '����Y',
   telephone            varchar(16) comment '�ֵ�绰',
   bulletin             varchar(1000) comment '����',
   picGroupId           int(11) comment '��ͼID',
   status               tinyint(1) comment '�ֵ�״̬(0:��Ч 1:��Ч)',
   createBy             int(11) not null comment '������ID',
   createTime           datetime not null comment '����ʱ��',
   createByType         tinyint(2) not null comment '����������(�ο�groupName=userType)',
   updateBy             int(11) comment '�޸���ID',
   updateTime           datetime comment '�޸�ʱ��',
   updateByType         tinyint(2) comment '�޸�������(�ο�groupName=userType)',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '�ֵ���Ϣ��չ��';



drop table if exists orga_tag_rel;
/*==============================================================*/
/* Table: orga_tag_rel                                          */
/*==============================================================*/
create table orga_tag_rel
(
   id                   int(11) not null auto_increment comment 'ID',
   orgId                int(11) not null comment '��֯����ID',
   tagId                int(11) not null comment '��ǩID',
   status               tinyint(1) not null comment '��ǩ�ֵ��Ӧ״̬(0:��Ч 1:��Ч)',
   createBy             int(11) not null comment '������',
   createTime           datetime not null comment '����ʱ��',
   createByType         tinyint(2) not null comment '����������(�ο�groupName=userType)',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '�ֵ��ǩ������';

CREATE TABLE `orga_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `name` varchar(45) NOT NULL COMMENT '��ǩ��',
  `userId` int(11) NOT NULL COMMENT '������id',
  `userType` tinyint(4) NOT NULL COMMENT '����������(�ο��ֵ��userType������)',
  `createTime` datetime NOT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`,`userId`,`userType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='��ǩ�����';

/*��Դ�������ֵ�id*/
ALTER TABLE flat_room ADD COLUMN orgId INT(11) COMMENT '��Դ��Ӧ�ķֵ�id';

ALTER TABLE comm_business_record ADD COLUMN orgId INT(11) COMMENT '����Ա��Ӧ����֯id' after channel;

use acct;
ALTER TABLE acct_busiRec ADD COLUMN orgId INT(11) COMMENT '����Ա��Ӧ����֯id' after channel;

ALTER TABLE acct_tradelog ADD COLUMN orgId INT(11) COMMENT '����Ա��Ӧ����֯id' after channel;