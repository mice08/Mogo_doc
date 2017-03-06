/*金融贷款合同日志表添加创建日期的索引，需要对每日数据进行统计*/
USE mogoroomdb;



ALTER TABLE loan_contract_logs ADD INDEX createTime(createTime);
