/* ����Ʒ��V�ֱ� */
use mogoroomdb;

drop table if exists brand_vscore;

/*==============================================================*/
/* Table: brand_vscore                                          */
/*==============================================================*/
create table brand_vscore
(
   id                   int(11) not null auto_increment comment '����ID',
   landlordId           int(11) not null comment 'ְҵ����ID',
   dimensionName        varchar(32) not null comment '����ά�� (�ο�groupName=vScoreDimension) ',
   dimensionValue       varchar(128) not null comment 'ά��ȡֵ',
   status               tinyint(1) not null default 1 comment '״̬(0:��Ч 1:��Ч)',
   createBy             int(11) not null comment '������Id',
   createByType         tinyint(2) not null comment '����������(�ο��ֵ��groupName=userType)',
   createTime           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��',
   updateBy             int(11) comment '�޸���Id',
   updateByType         tinyint(2) comment '�޸�������(�ο��ֵ��groupName=userType)',
   updateTime           datetime default CURRENT_TIMESTAMP comment '�޸���ʱ��',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment 'Ʒ��V�ֱ�';


INSERT INTO comm_dictionary (CODE,groupName,sort,keyPro,VALUE,STATUS,enValue)VALUES('totalRooms','vScoreDimension',1,'G','��Դ¼����',1,'totalRooms');
INSERT INTO comm_dictionary (CODE,groupName,sort,keyPro,VALUE,STATUS,enValue)VALUES('turnCntrCount','vScoreDimension',2,'J','��Լ��¼��',1,'turnCntrCount');
INSERT INTO comm_dictionary (CODE,groupName,sort,keyPro,VALUE,STATUS,enValue)VALUES('onlineSignCount','vScoreDimension',3,'O','����ǩԼ��',1,'onlineSignCount');
INSERT INTO comm_dictionary (CODE,groupName,sort,keyPro,VALUE,STATUS,enValue)VALUES('onlinePayCount','vScoreDimension',4,'Q','����֧������',1,'onlinePayCount');
INSERT INTO comm_dictionary (CODE,groupName,sort,keyPro,VALUE,STATUS,enValue)VALUES('rentedRoomCount','vScoreDimension',5,'H','��Դ������',1,'rentedRoomCount');
INSERT INTO comm_dictionary (CODE,groupName,sort,keyPro,VALUE,STATUS,enValue)VALUES('vScore','vScoreDimension',6,'V','V��',1,'vScore');