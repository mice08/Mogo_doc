use mogoroomdb;

/*������ ����������*/
ALTER TABLE user_landlord ADD COLUMN servicerId INT(11) NULL comment '������ID';

/*������ ����������Դ*/
ALTER TABLE user_landlord ADD COLUMN landlordSource INT(2) NULL comment '������Դ(1:���� 2:�Ͽͻ�����3:���� 4:����)';