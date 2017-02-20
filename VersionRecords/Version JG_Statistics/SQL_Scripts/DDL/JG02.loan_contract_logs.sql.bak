/*金融贷款合同日志表添加创建日期的索引，需要对每日数据进行统计*/
USE mogoroomdb;



ALTER TABLE loan_contract_logs ADD INDEX createTime(createTime);

/*账务账单表创建账单类型的索引，需要对某段deadline时间内的金融账单类型进行统计*/
ALTER TABLE acct.acct_bill ADD INDEX billType(billType);
