use mogoroomdb;
/*退房表新增version版本字段*/
ALTER TABLE oder_surrenderapply ADD COLUMN  version INT(11) DEFAULT 0 NOT NULL COMMENT '版本字段(0:老版本 1:版本1)' AFTER result ;