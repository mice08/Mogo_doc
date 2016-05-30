--为comm_business_record添加交易渠道字段
use mogoroomdb;
ALTER TABLE comm_business_record ADD COLUMN channel TINYINT(3) DEFAULT 0  COMMENT '交易渠道(参考字典表groupName=channel)';