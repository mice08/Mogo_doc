-- ҵ�񶩵�������һ���ֶ�
alter table `oder_businessOrder` 
   add column `errorMsg` varchar(500) NULL COMMENT '������Ϣ' after `status`;