/* Database name `mogoroomdb`, 400��ϵͳ��ر��� */

use mogoroomdb;

create table tele_extNum
(
   `id`        int(11) not null auto_increment comment '����ID',
   `phoneNum`        tinyint(1) not null default 0 comment '�ܻ���(0:4009006868 1:4008004949)',
   `extNum`        VARCHAR(10) not null default '0' comment '�ֻ���',
   `phoneType`        tinyint(1) not null default 0 comment '��������(0:��ͨ���� 1:��������)',
   `startTime`        DATETIME comment '��ͨʱ��',
   `suspTime`        DATETIME comment '����ʱ��',
   `retunTime`        DATETIME comment '�ջ�ʱ��',
   `valid`        tinyint(1) not null default 1 comment '״̬��0Ϊ��Ч��1Ϊ��Ч',
   `status`        int(4) comment 'ҵ��״̬',
   `createTime`        DATETIME not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `createBy`        int(11) not null comment '������',
   `createByType`        int(11) not null comment '����������(�ο��ֵ������:userType)',
   `updateTime`        DATETIME default CURRENT_TIMESTAMP comment '�޸�ʱ��',
   `updateBy`        int(11) comment '�޸���',
   `updateByType`        int(11) comment '�޸�������(�ο��ֵ������:userType)',
   `soDoneCode`        INT(32) comment '������ˮ��',
   `remark`        VARCHAR(255) comment '��ע',
   primary key (id)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COMMENT='�ֻ��ű�';

create table tele_sungoin_navi
(
   `id`        int(11) not null auto_increment comment '����ID',
   `extNumId`        int(11) not null default 0 comment '�ֻ���Id',
   `naviId`        VARCHAR(255) not null comment '����Id(������ϵͳ����)',
   `parentId`        int(11) not null default 0 comment '������Id(0��ʾ������)',
   `ivrKey`        VARCHAR(10) comment '������(������ϵͳ����)',
   `ivrName`        VARCHAR(50) comment '������(������ϵͳ����)',
   `hasChild`        tinyint(1) not null default 0 comment '�Ƿ����¼�����(0:�� 1��)',
   `ringLsh`        VARCHAR(255) comment '����������ˮ��(������ϵͳ����)',
   `valid`        tinyint(1) not null default 1 comment '״̬��0Ϊ��Ч��1Ϊ��Ч',
   `status`        int(4) comment 'ҵ��״̬',
   `createTime`        DATETIME not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `createBy`        int(11) not null comment '������',
   `createByType`        int(11) not null comment '����������(�ο��ֵ������:userType)',
   `updateTime`        DATETIME default CURRENT_TIMESTAMP comment '�޸�ʱ��',
   `updateBy`        int(11) comment '�޸���',
   `updateByType`        int(11) comment '�޸�������(�ο��ֵ������:userType)',
   `soDoneCode`        INT(32) comment '������ˮ��',
   `remark`        VARCHAR(255) comment '��ע',
   primary key (id)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COMMENT='400������';

create table tele_sungoin_seat
(
   `id`        int(11) not null auto_increment comment '����ID',
   `naviId`        int(11) not null default 0 comment '����Id',
   `seatId`        VARCHAR(128) not null comment '��ϯId(������ϵͳ����)',
   `userId`        VARCHAR(128) not null comment '�û�Id(������ϵͳ����)',
   `seatType`        VARCHAR(10) not null default '1' comment '��ϯ����(0Ϊ�����ϯ��1Ϊ������ϯ��01���߽��ǣ�01�м���Ӣ�Ķ��ŷָ�)',
   `cntctName`        VARCHAR(50) not null comment '����(������ϵͳ����)',
   `phone`        VARCHAR(20) not null comment '�󶨺���(������ϵͳ����)',
   `userCode`        VARCHAR(20) comment '����(������ϵͳ����)',
   `password`        VARCHAR(255) comment '����(������ϵͳ����)',
   `valid`        tinyint(1) not null default 1 comment '״̬��0Ϊ��Ч��1Ϊ��Ч',
   `status`        int(4) comment 'ҵ��״̬',
   `createTime`        DATETIME not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `createBy`        int(11) not null comment '������',
   `createByType`        int(11) not null comment '����������(�ο��ֵ������:userType)',
   `updateTime`        DATETIME default CURRENT_TIMESTAMP comment '�޸�ʱ��',
   `updateBy`        int(11) comment '�޸���',
   `updateByType`        int(11) comment '�޸�������(�ο��ֵ������:userType)',
   `soDoneCode`        INT(32) comment '������ˮ��',
   `remark`        VARCHAR(255) comment '��ע',
   primary key (id)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COMMENT='400��ϯ��';

create table tele_ext_usr_rel
(
   `id`        int(11) not null auto_increment comment '����ID',
   `extNumId`        int(11) not null default 0 comment '�ֻ���Id',
   `userId`        int(11) not null default 0 comment '�û�Id',
   `userType`        int(11) not null default 0 comment '�û�����(�ο��ֵ������:userType)',
   `ctctId`        int(11) default 0 comment '��ϵ��Id',
   `ctctIdSource`        tinyint(1) default 3 comment '��ϵ����Դ,1:����,2:Ա��,3:��ϵ��',
   `empId`        int(11) comment '�ƹ�Ա��Id',
   `empGrupCode`        varchar(40) comment '�ƹ���Code(�ο��ֵ������:saleGroup)',
   `seatId`        int(11) default 0 comment '��ϯId',
   `valid`        tinyint(1) not null default 1 comment '״̬��0Ϊ��Ч��1Ϊ��Ч',
   `status`        int(4) comment 'ҵ��״̬',
   `createTime`        DATETIME not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `createBy`        int(11) not null comment '������',
   `createByType`        int(11) not null comment '����������(�ο��ֵ������:userType)',
   `updateTime`        DATETIME default CURRENT_TIMESTAMP comment '�޸�ʱ��',
   `updateBy`        int(11) comment '�޸���',
   `updateByType`        int(11) comment '�޸�������(�ο��ֵ������:userType)',
   `soDoneCode`        INT(32) comment '������ˮ��',
   `remark`        VARCHAR(255) comment '��ע',
   primary key (id)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COMMENT='�ֻ��û���ϵ��';

create table tele_price
(
   `id`        int(11) not null auto_increment comment '����ID',
   `extNumId`        int(11) not null default 0 comment '�ֻ���Id',
   `extNum`        VARCHAR(10) not null default '0' comment '�ֻ���',
   `priceJson`        varchar(1024) comment '�۸�JSON',
   `valid`        tinyint(1) not null default 1 comment '״̬��0Ϊ��Ч��1Ϊ��Ч',
   `status`        int(4) comment 'ҵ��״̬',
   `createTime`        DATETIME not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `createBy`        int(11) not null comment '������',
   `createByType`        int(11) not null comment '����������(�ο��ֵ������:userType)',
   `updateTime`        DATETIME default CURRENT_TIMESTAMP comment '�޸�ʱ��',
   `updateBy`        int(11) comment '�޸���',
   `updateByType`        int(11) comment '�޸�������(�ο��ֵ������:userType)',
   `soDoneCode`        INT(32) comment '������ˮ��',
   `remark`        VARCHAR(255) comment '��ע',
   primary key (id)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COMMENT='�ֻ��۸��';

create table tele_callLog
(
   `id`        int(11) not null auto_increment comment '����ID',
   `extNumId`        int(11) comment '�ֻ���Id',
   `extNum`        VARCHAR(10) comment '�ֻ���',
   `userId`        int(11) comment '�û�Id',
   `userType`        int(11) comment '�û�����(�ο��ֵ������:userType)',
   `cntctName`        VARCHAR(50) comment '������',
   `thrdPtyInfoId`        int(11) not null default 0 comment '��������ϢId',
   `thrdPtyInfoType`        tinyint(1) not null default 0 comment '��������ϢType (0: �о�)',
   `valid`        tinyint(1) not null default 1 comment '״̬��0Ϊ��Ч��1Ϊ��Ч',
   `status`        int(4) comment 'ҵ��״̬',
   `createTime`        DATETIME not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `createBy`        int(11) not null comment '������',
   `createByType`        int(11) not null comment '����������(�ο��ֵ������:userType)',
   `updateTime`        DATETIME default CURRENT_TIMESTAMP comment '�޸�ʱ��',
   `updateBy`        int(11) comment '�޸���',
   `updateByType`        int(11) comment '�޸�������(�ο��ֵ������:userType)',
   `soDoneCode`        INT(32) comment '������ˮ��',
   `remark`        VARCHAR(255) comment '��ע',
   primary key (id)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COMMENT='400�����¼��';

create table tele_sungoin_callLog
(
   `id`        int(11) not null auto_increment comment '����ID',
   `callerNo`        VARCHAR(20) not null comment '���к���(������ϵͳ����)',
   `ivrName`        VARCHAR(50) not null comment '���뵼����(������ϵͳ����)',
   `linkman`        VARCHAR(50) comment '��ϵ��(������ϵͳ����)',
   `seatName`        VARCHAR(50) comment '�ѽ���ϯ��(������ϵͳ����)',
   `comeTime`        DATETIME not null comment '����ʱ��(������ϵͳ����)',
   `startTime`        DATETIME comment '����ʱ��(������ϵͳ����)',
   `hangTime`        DATETIME not null comment '����ʱ��(������ϵͳ����)',
   `talkInterval`        VARCHAR(100) comment 'Ӧ��ʱ��(������ϵͳ����)',
   `callerLoc`        VARCHAR(100) comment '�û�������(������ϵͳ����)',
   `lsh`        VARCHAR(100) comment '��ˮ��(������ϵͳ����)',
   `callVoiceUrl`        VARCHAR(255) comment '�绰¼��Url(������ϵͳ����)',
   `valid`        tinyint(1) not null default 1 comment '״̬��0Ϊ��Ч��1Ϊ��Ч',
   `status`        int(4) comment 'ҵ��״̬',
   `createTime`        DATETIME not null default CURRENT_TIMESTAMP comment '����ʱ��',
   `createBy`        int(11) not null comment '������',
   `createByType`        int(11) not null comment '����������(�ο��ֵ������:userType)',
   `updateTime`        DATETIME default CURRENT_TIMESTAMP comment '�޸�ʱ��',
   `updateBy`        int(11) comment '�޸���',
   `updateByType`        int(11) comment '�޸�������(�ο��ֵ������:userType)',
   `soDoneCode`        INT(32) comment '������ˮ��',
   `remark`        VARCHAR(255) comment '��ע',
   primary key (id)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COMMENT='ͨ����¼��������Ϣ��';


