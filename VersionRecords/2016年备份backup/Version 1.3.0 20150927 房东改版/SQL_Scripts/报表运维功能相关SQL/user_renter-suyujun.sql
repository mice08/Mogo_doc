ALTER TABLE `user_renter`
ADD COLUMN `isBlack`  tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否黑名单，0:否，1:是',
ADD COLUMN `blackRemark` varchar(1000) NULL COMMENT '标示为黑名单描述',
ADD COLUMN `remark`  varchar(1000) NULL COMMENT '租客备注';