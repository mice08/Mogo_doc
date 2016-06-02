/* Database name `mogoroomdb` ������ͳһ��־��¼Ӧ�ձ�*/

use mogoroomdb;
drop  table comm_business_record_mapping;
create table comm_business_record_mapping(
   id int(40) primary key AUTO_INCREMENT comment '����ID',
   busiType int(11) not null comment 'ҵ��Ψһ����,��Ӧcomm_busitype���¼',
   tableName varchar(30) not null comment 'ҵ������Ӧ��ҵ���',
   tableNameHis varchar(30) not null comment 'ҵ������Ӧ��ҵ����ʷ��',
   tableLabel varchar(50) not null comment 'ҵ�������',
   tableColumnLabel varchar(50) not null comment 'ҵ������Ӧ��ҵ����ʷ����������ʾ��',
   tableColumnName varchar(20) not null comment 'ҵ������Ӧ��ҵ����ʷ������' ,
   checkUniColumn varchar(50) not null comment 'ҵ������Ӧ��ҵ����ʷ��Ƚ��ֶ�����' ,
   isCommWrite int not null comment '�Ƿ���ͨ�õ�д��ʷ��(0:�� 1:��)' ,
   sort int not null default 1 comment '��������ԽСԽ��ǰ'
)ENGINE=InnoDB  default charset=utf8mb4 COMMENT='ҵ���������־��ʷ��ӳ���ϵ��';

 
/*  ��������ṹ*/ 
ALTER TABLE `comm_busitype` ADD COLUMN `parentId` INT(11) NULL COMMENT '��ID,��Ӧ����busiType'  ;
ALTER TABLE `comm_busitype` ADD COLUMN `level` INT(1) default 1 COMMENT '����,��1��ʼ'  ;
ALTER TABLE `comm_busitype` ADD COLUMN `isLeaf` INT(1) default 1 COMMENT '�Ƿ�ĩ��'  ;

ALTER TABLE `comm_business_record` MODIFY COLUMN `orgId` INT(11) default 1 COMMENT '����Ա��Ӧ����֯id'  ;

