-- ������ˮ������һ���ֶ�
alter table `user_waterAccount` 
   add column `status` int(9) DEFAULT '1' NULL COMMENT '����״̬(��ʼ��(0), �ɹ�(1), ʧ��(-1))' after `fundSourceType`;