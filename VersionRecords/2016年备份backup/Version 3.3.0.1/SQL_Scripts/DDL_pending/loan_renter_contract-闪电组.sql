use mogoroomdb;

/*租客贷款合同表 新增蘑菇宝关闭时间*/
ALTER TABLE loan_renter_contract ADD COLUMN closeTime datetime NULL comment '蘑菇宝关闭时间';