/*�������޸ķ������������չ���ֶ�*/
USE mogoroomdb ;

ALTER TABLE `loan_apply_extend` modify column loanKey VARCHAR(30)  NOT NULL  COMMENT '�������ı���',
ADD COLUMN `updateTime` DATETIME NULL  COMMENT '�޸�ʱ��' AFTER `createByType`,
ADD COLUMN `updateBy` INT NULL  COMMENT '�޸���' AFTER `updateTime`,
ADD COLUMN `updateByType` INT NULL  COMMENT '�޸�������' AFTER `updateBy`;