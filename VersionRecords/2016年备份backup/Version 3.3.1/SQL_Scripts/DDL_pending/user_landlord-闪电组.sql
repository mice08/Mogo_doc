use mogoroomdb;

/*������ ��������άϵ��Ա*/
ALTER TABLE user_landlord ADD COLUMN customerMgr INT(11) NULL comment '����άϵ��Ա';
ALTER TABLE user_landlord_his ADD COLUMN customerMgr INT(11) NULL comment '����άϵ��Ա';
 
/*������ ����������Դ*/
ALTER TABLE user_landlord ADD COLUMN landlordSource INT(2) NULL comment '������Դ(1:���� 2:�Ͽͻ����� 3:���� 4:����)';
ALTER TABLE user_landlord_his ADD COLUMN landlordSource INT(2) NULL comment '������Դ(1:���� 2:�Ͽͻ����� 3:���� 4:����)';