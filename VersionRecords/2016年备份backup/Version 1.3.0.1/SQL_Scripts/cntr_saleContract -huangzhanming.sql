ALTER TABLE `cntr_salecontract`   
  CHANGE `contractRemark` `contractRemark` VARCHAR(500) CHARSET utf8 COLLATE utf8_bin NULL  COMMENT '��ͬ��ע';

ALTER TABLE `oder_signedorder_updhistory`   
  CHANGE `remark` `remark` VARCHAR(1100) CHARSET utf8 COLLATE utf8_general_ci NULL  COMMENT '��ע';
