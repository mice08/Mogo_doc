ALTER TABLE `bill_loan`
ADD COLUMN `guarantee`  VARCHAR(32) CHARACTER SET utf8 NULL COMMENT '����������',
ADD COLUMN `guaranteePhone`  VARCHAR(16) CHARACTER SET utf8 NULL COMMENT '�����˵绰';


ALTER TABLE `bill_loan`   
  CHANGE `rate` `rate` INT(11) DEFAULT 900  NULL  COMMENT '����';

UPDATE `bill_loan` SET `rate` = `rate` * 100 ;