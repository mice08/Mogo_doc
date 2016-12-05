/*  修改user_renter_info字段*/
use mogoroomdb;

ALTER TABLE user_renter_info add   `isBlack` tinyint(1) DEFAULT '0' COMMENT '是否黑名单,0:否,1:是';  

ALTER TABLE user_renter_info add   `blackRemark` varchar(1000) DEFAULT NULL COMMENT '标示为黑名单描述';
