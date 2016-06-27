drop table if exists user_landlord_surrender_stage;

/*==============================================================*/
/* Table: user_landlord_surrender_stage                         */
/*==============================================================*/
create table user_landlord_surrender_stage
(
   id                   int(11) not null auto_increment comment '������Լ�����',
   landlordId           int(11) not null comment '��Լ����id',
   stage                int(1) not null comment '��Ӧ�÷�����Լ�Ĳ���(1:ȷ�Ͻ�Լ���� 2:�¼ܹ�����Դ 3:������סǩԼ�� 4:���÷����˺�)',
   stageValue           varchar(100) comment '��Ӧ�����в�����ֵ��json��ʽ����',
   createBy             int(11) not null comment '��Ӧ����Ĳ�����',
   createByType         int(1) not null comment '����������(����groupName=userType)',
   createTime           datetime not null comment '��Ӧ����Ĵ���ʱ��',
   updateBy             int(11) comment '��Ӧ������޸���',
   updateByType         char(10) comment '�޸�������(����groupName=userType)',
   updateTime           datetime not null comment '��Ӧ������޸�ʱ��',
   primary key (id)
);

alter table user_landlord_surrender_stage comment '������Լ�����';