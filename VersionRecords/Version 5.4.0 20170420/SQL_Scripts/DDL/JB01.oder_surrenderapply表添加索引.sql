/*退房申请表添加外键索引*/
USE mogoroomdb;

-- 外键字段
ALTER TABLE oder_surrenderapply ADD INDEX idx_oder_surrenderapply_landlordId(landlordId );
-- 外键字段
ALTER TABLE oder_surrenderapply ADD INDEX idx_oder_surrenderapply_renterId(renterId);
