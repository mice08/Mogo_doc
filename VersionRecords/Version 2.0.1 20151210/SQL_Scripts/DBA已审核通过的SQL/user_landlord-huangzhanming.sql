/*  Database name `mogoroomdb` ����������Ӻ�ͬ�׷��ֶ�*/ 
use mogoroomdb; 
 

ALTER TABLE user_landlord  ADD column legalPerson varchar(50) NOT NULL COMMENT '����������Ҫ������Ϊ��ͬ�׷�';

update user_landlord set legalPerson=name;