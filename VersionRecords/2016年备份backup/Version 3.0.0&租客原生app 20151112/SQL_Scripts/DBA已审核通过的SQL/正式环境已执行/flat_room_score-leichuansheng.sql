create table `flat_room_score`( 
   `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����ID', 
   `roomId` int(11) NOT NULL COMMENT '����ID', 
   `userExp` int(6) NOT NULL COMMENT '�û�����', 
   `costPerf` int(6) NOT NULL COMMENT '�Լ۱�', 
   `vacantDegree` int(6) NOT NULL COMMENT '���ó̶�', 
   `willBeOnline` int(6) NOT NULL COMMENT 'Ԥ������', 
   `landlordCredit` int(6) NOT NULL COMMENT '��������', 
   `createBy` int(11) NOT NULL COMMENT '������', 
   `createByType` int(2) NOT NULL COMMENT '����������(�ο��ֵ��groupName=userType)', 
   `createTime` datetime NOT NULL DEFAULT current_timestamp COMMENT '����ʱ��', 
   `updateBy` int(11) COMMENT '�޸���', 
   `updateByType` int(2) COMMENT '�޸�������(�ο��ֵ��groupName=userType)', 
   `updateTime` datetime COMMENT '�޸�ʱ��', 
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Դ���ֱ�';