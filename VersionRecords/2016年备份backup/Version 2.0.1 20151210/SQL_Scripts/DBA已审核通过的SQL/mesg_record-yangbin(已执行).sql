/*  Database name `mogoroomdb` ����Ϣ��¼���޸�*/ 
use mogoroomdb; 

ALTER TABLE mesg_record  modify column receiveBy int(11) null comment '������Ϣ���û�id',
modify column receiveByType int(2) null comment '������Ϣ���û����ͣ��ο��ֵ��groupName=userType��',
modify column createTime datetime not null comment '��Ϣ��¼����ʱ��';
