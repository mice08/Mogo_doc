/* Database name `mogoroomdb`�� �������۱� */
 
use mogoroomdb;
 
 
CREATE TABLE supp_service_evaluate 
(
  id int(11) auto_increment NOT NULL COMMENT 'ID',
  roomId int(11) NOT NULL COMMENT '����ID',
  landlordId int(11) NOT NULL COMMENT '����ID',
  cellphone varchar(11) DEFAULT NULL COMMENT '�û��ֻ���',
  createBy             int(11) not null comment '������',
  createTime          datetime not null DEFAULT CURRENT_TIMESTAMP comment '����ʱ��',
  createByType         int(1) not null comment '����������(�ο��ֵ��groupName=userType)',
  score tinyint(1) NULL COMMENT '����(1,2,3,4,5)',
  scoreDtl tinyint(1) COMMENT '����ԭ��(1:��Դ�ѳ��� 2:��Ϣ����ȷ 3:�绰û��ͨ 4:̬�Ȳ��Ѻ�)',
  remark varchar(255) COMMENT '��ע',
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='�������۱�';