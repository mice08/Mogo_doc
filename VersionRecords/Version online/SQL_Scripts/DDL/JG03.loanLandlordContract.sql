/*�޸��ֶ�*/

USE mogoroomdb;

/*�޸��������ڿ���Ϊ�գ�Ĭ��Ϊ�գ����ڷ���������д���ϵ����ύ���������*/
ALTER TABLE loan_landlord_contract modify column applyTime timestamp DEFAULT NULL COMMENT '����ʱ��';

/*�޸Ľ����̶ȿ���Ϊ�գ�Ĭ��Ϊ�գ����ڷ������Բ�ѡ�����̶ȣ�ѡ����ʱ���������*/
ALTER TABLE loan_landlord_mPayApply modify column education int(1) DEFAULT NULL COMMENT '�����̶�(�ο��ֵ������:educationalBackground)';

/*��Ӱ����п������ֶΣ�����ÿ�հ󿨴������ܳ���5�ε�����*/
ALTER TABLE loan_mPayApply_bank add column bindCardTime datetime DEFAULT NULL COMMENT '�����п�����';