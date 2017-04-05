/*  Database name `mogoroomdb` ����Ӻ�ͬ�����*/ 
use mogoroomdb; 
 
CREATE TABLE `cntr_salecontract_change` ( 
   id   int(11) NOT NULL AUTO_INCREMENT COMMENT '��ͬ�����ID', 
   contractId  int(11) NOT NULL COMMENT '��ͬID',
   leaseTerm  int(11) NOT NULL COMMENT '����',  
   rentPrice  decimal(12,2) NOT NULL COMMENT '���',  
   payType  int(11) NOT NULL COMMENT '��𸶿ʽ���ο�comm_paytype��',
   valid  tinyint(1) NOT NULL DEFAULT 1 COMMENT '��Ч״̬��1��Ч��0��Ч', 
   status tinyint(1) NOT NULL COMMENT '�����״̬��1��ʼ��2����ȷ�ϣ�3���ȷ�ϲ���������', 
   invalidTime datetime NULL COMMENT 'ʧЧʱ��', 
   createBy             int(11) not null comment '������',
   createTime           datetime not null comment '����ʱ��',
   createByType         int(2) not null comment '���������ͣ��ο��ֵ��groupName=userType��',
   updateBy             int(11) comment '�޸���',
   updateTime           datetime comment '�޸�ʱ��',
   updateByType         int(2) comment 'ģ�޸������ͣ��ο��ֵ��groupName=userType��',
   PRIMARY KEY (`id`) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ͬ�����';







