use mogoroomdb;
/*退房表扩展result字段长度*/
ALTER TABLE oder_surrenderapply MODIFY result VARCHAR(6144) COMMENT '退房快照';