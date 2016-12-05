ALTER TABLE `bill_loan`
ADD COLUMN `guarantee`  VARCHAR(32) CHARACTER SET utf8 NULL COMMENT '担保人姓名',
ADD COLUMN `guaranteePhone`  VARCHAR(16) CHARACTER SET utf8 NULL COMMENT '担保人电话';


ALTER TABLE `bill_loan`   
  CHANGE `rate` `rate` INT(11) DEFAULT 900  NULL  COMMENT '费率';

UPDATE `bill_loan` SET `rate` = `rate` * 100 ;