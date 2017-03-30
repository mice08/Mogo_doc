  /*增加支付类型*/
  ALTER TABLE `oder_businessOrder`   
  ADD COLUMN `payType` INT(11) NULL  COMMENT '支付类型' AFTER `businessType`;
  
  /*增加维金接收方ID*/
  ALTER TABLE `oder_businessOrder`   
  ADD COLUMN `toMemberNum` VARCHAR(16) NULL  COMMENT '入款账户' AFTER `payType`;