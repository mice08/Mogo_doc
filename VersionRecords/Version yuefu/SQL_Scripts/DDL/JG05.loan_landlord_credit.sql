/*���ڲ�Ʒ���������ֶ�*/
USE mogoroomdb ;

ALTER TABLE loan_landlord_credit 
  ADD COLUMN firstVerifyCreditHisId INT (11) NULL COMMENT 'һ��ǰ���һ���޸ķ����hisId(loan_landlord_credit_his)'  ;

ALTER TABLE loan_landlord_credit_his 
  ADD COLUMN firstVerifyCreditHisId INT (11) NULL COMMENT 'һ��ǰ���һ���޸ķ����hisId(loan_landlord_credit_his)'  ;
