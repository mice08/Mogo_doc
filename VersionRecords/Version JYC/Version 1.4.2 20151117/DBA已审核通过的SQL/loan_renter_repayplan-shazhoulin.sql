ALTER TABLE `loan_renter_repayplan`   
  ADD COLUMN `overduedate` DATE NULL  COMMENT '��������' AFTER `landlordPaid`;

UPDATE loan_renter_repayplan SET overduedate= DATE_ADD(duedate,INTERVAL 5 DAY);