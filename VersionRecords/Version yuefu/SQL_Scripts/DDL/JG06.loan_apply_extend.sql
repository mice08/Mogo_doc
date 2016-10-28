/*�������ڴ���������չ��*/
USE mogoroomdb ;

drop table if exists loan_apply_extend;

/*==============================================================*/
/* Table: �������������չ��                                                                                                                                                               */
/*==============================================================*/
create table loan_apply_extend
(
   id                           int(11) not null auto_increment comment '�������������չ��id',
   contractId            int(11) not null auto_increment comment '�������������չ��id',
   loanType              int(2) comment '�����������(1:Ģ���� 2:Ģ���¸�)';
   key                        int(11) not null comment '���ʶ�Ӧ�ķ���id',
   value                    int(11) not null comment '��������ĳ���',
   createTime          datetime not null comment '����ʱ��',
   createBy               int(11) not null comment '������',
   createByType       int(1) not null comment '����������(�����ֵ������:userType)',
   primary key (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='�������������չ��';