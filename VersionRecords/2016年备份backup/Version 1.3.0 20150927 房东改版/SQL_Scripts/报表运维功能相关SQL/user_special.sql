create table user_special
(
   id               int(11) not null comment 'ID' auto_increment,
   userId               int(11) not null comment '�û�ID',
   userType             int(1) not null comment '�û�����(�ο��ֵ��groupName=userType)',
   specialType        int(1) not null comment '�ر�����(�ο��ֵ��groupName=specialType)',
   createBy             int(11) not null comment '������',
   createTime           datetime not null DEFAULT current_timestamp comment '����ʱ��',
   createByType     int(1) not null comment '����������(�ο��ֵ��groupName=userType)',
   updateBy             int(11) not null comment '�޸���',
   updateTime           datetime not null DEFAULT current_timestamp comment '�޸�ʱ��',
   updateByType     int(1) not null comment '�޸�������(�ο��ֵ��groupName=userType)',
   status  int(1) not null  comment '״̬',
   primary key (id)
);

alter table user_special comment '�ر��û���';

CREATE  INDEX idx_user_special ON user_special(userId,userType,specialType);