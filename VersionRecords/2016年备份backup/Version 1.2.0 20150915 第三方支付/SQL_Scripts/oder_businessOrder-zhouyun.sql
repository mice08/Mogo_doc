  /*����֧������*/
  ALTER TABLE `oder_businessOrder`   
  ADD COLUMN `payType` INT(11) NULL  COMMENT '֧������' AFTER `businessType`;
  
  /*����ά����շ�ID*/
  ALTER TABLE `oder_businessOrder`   
  ADD COLUMN `toMemberNum` VARCHAR(16) NULL  COMMENT '����˻�' AFTER `payType`;