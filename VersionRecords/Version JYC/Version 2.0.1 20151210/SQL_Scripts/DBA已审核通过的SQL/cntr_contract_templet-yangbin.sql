/*  Database name `mogoroomdb` ���º�ͬ��ϵ��ر�*/ 
use mogoroomdb; 
 

drop table if exists cntr_contract_templet;
create table cntr_contract_templet
(
   id                   int(11) not null auto_increment comment '����',
   cityId               int(11) not null comment '����ID',
   landlordId           int(11) null comment '����ID',
   rentType             tinyint(1) comment '��������(1��Ӫ2����3����)',
   templetName          varchar(20) not null comment '��ͬģ������',
   templetCode          varchar(20) not null comment '��ͬģ�����',
   templetPath          varchar(200) not null comment 'ģ���ļ�·��',
   status               tinyint(1) not null comment '״̬,0��Ч1��Ч',
   createTime           datetime not null comment '����ʱ��',
   createBy             int(11) not null comment '������',
   createByType         tinyint(2) not null comment '���������ͣ��ο��ֵ���groupName=userType',
   updateTime           datetime comment '�޸�ʱ��',
   updateBy             int(11) comment '�޸���',
   updateByType         tinyint(2) comment '�޸������ͣ��ο��ֵ���groupName=userType',
   lang                 tinyint(2) not null comment '�������ͣ��ο��ֵ���groupName=langType',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ͬģ���';



drop table if exists cntr_contract_clause;
create table cntr_contract_clause
(
   id                   int(11) not null auto_increment comment '����',
   landlordId           int(11) not null comment '����ID',
   clauseName           varchar(100) not null comment '�����������ƣ�ѡ���ã�����ʾ�ں�ͬ�ϣ�',
   clauseCode           varchar(20) not null comment '����������룬Ӣ�ı���',
   clauseType           varchar(100) not null comment '�����������ͣ���ʾ�ں�ͬ�ϣ�',
   clauseContent        varchar(500) not null comment '�����������ݣ���ʾ�ں�ͬ�ϣ�',
   status               int(2) not null comment '״̬,0��Ч1��Ч',
   createTime           datetime not null comment '����ʱ��',
   createBy             int(11) not null comment '������',
   createByType         varchar(50) not null comment '���������ͣ��ο��ֵ���groupName=userType',
   updateTime           datetime comment '�޸�ʱ��',
   updateBy             int(11) comment '�޸���',
   updateByType         varchar(50) comment '�޸������ͣ��ο��ֵ���groupName=userType',
   lang                 tinyint(2) not null comment '�������ͣ��ο��ֵ���groupName=langType',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ͬ���������';



drop table if exists cntr_contract_templet_clause_rel;
create table cntr_contract_templet_clause_rel
(
   id                   int(11) not null auto_increment comment '����',
   contractId           int(11) not null comment '��ͬID',
   contractVersionId    int(11) null comment '��ʷ��ͬ�汾��',
   templetId            int(11) not null comment '��ͬģ��ID',
   clauseId             int(11) null comment '��������ID',
   status               int(2) not null comment '״̬,0��Ч1��Ч',
   createTime           datetime not null comment '����ʱ��',
   createBy             int(11) not null comment '������',
   createByType         varchar(50) not null comment '���������ͣ��ο��ֵ���groupName=userType',
   updateTime           datetime comment '�޸�ʱ��',
   updateBy             int(11) comment '�޸���',
   updateByType         varchar(50) comment '�޸������ͣ��ο��ֵ���groupName=userType',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ͬģ�����������';



drop table if exists cntr_salecontract_version;
create table cntr_salecontract_version
(
   versionId            int(11) not null auto_increment comment '����ID',
   contractId           int(11) comment '��ͬID',
   contractAutoNum      varchar(32) comment '��ͬ���(�Զ�)',
   contractOffNum       varchar(32) comment '��ͬ���(����)',
   flatsId              int(11) comment 'ǩԼ��ԢID',
   roomId               int(11) comment 'ǩԼ����ID',
   renterId             int(11) comment '���ID',
   landlordId           int(11) comment 'ְҵ����ID',
   contractType         int(11) comment '��ͬ����(1.Ģ����2.��Ģ����)',
   sourceRentPrice      double comment 'ǩԼ�����۸�(ԭ��)',
   realRentPrice        double comment 'ǩԼ�����۸�(ʵ�ʼ�)',
   status               int(11) comment '��ͬ״̬(ö��)',
   beginDate            datetime comment '��ͬ��ʼ����(������)',
   endDate              datetime comment '��ͬ��������',
   loseEfficacyDate     datetime comment '��ͬʧЧ����',
   leaseTerm            int(11) comment '����',
   signingDate          datetime comment 'ǩԼ����',
   rentPayType          int(11) comment '��𸶿ʽ',
   contractRemark       varchar(500) comment '��ͬ��ע',
   idPhotoUrl           varchar(128) comment '��֤ͬ����·��',
   createTime           datetime comment '����ʱ��',
   effectiveTime        timestamp comment '��Чʱ��',
   emergencyContact     varchar(30) comment '������ϵ��',
   emergencyContactPhone varchar(30) comment '������ϵ�˵绰����',
   emergencyContactAddress varchar(70) comment '������ϵ�˵�ַ',
   turnStrtus           int(11) comment '0��ת��1ת��2����ͬ��3���˲�ͬ��',
   payDate              int(2) comment 'ÿ�ڸ�����',
   fileName             varchar(128) comment '��ͬ�ļ�����',
   billclear            int(2) not null comment '�˵��Ƿ�����',
   agencyFee            decimal(10,0) comment '�н��',
   manageFee            decimal(10,0) comment '�����',
   butlerName           varchar(20) comment '�ܼ�����',
   templetParams        varchar(500) comment '��ͬģ�����(json��ʽ)',
   primary key (versionId)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���ۺ�ͬ��ʷ��';
