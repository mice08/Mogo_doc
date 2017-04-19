/*运营报表添加索引*/
USE mogoroomdb;

-- 外键字段
ALTER TABLE repo_landlord_operate_day ADD INDEX idx_repo_landlord_operate_day_landlordId(landlordId );
-- 外键字段
ALTER TABLE repo_landlord_operate_day ADD INDEX idx_repo_landlord_operate_day_recordDate(recordDate);