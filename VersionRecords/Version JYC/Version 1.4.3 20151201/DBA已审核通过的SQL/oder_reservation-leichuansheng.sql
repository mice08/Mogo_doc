/*  Database name `mogoroomdb` �����ԤԼ��Դ�ֶ�*/
use mogoroomdb;

alter table `oder_reservationorder` 
   add column `channel` varchar(20) NULL COMMENT 'ԤԼ��Դ���ο��ֶα�groupName=channel' after `signedEndTime`;