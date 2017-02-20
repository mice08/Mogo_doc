/*合同-CA记录表*/
use mogoroomdb;

ALTER TABLE user_landlord_caidentification rename  user_caidentification;

ALTER TABLE user_caidentification CHANGE landlordId userId INT (11) NOT NULL COMMENT '用户ID';

ALTER TABLE user_caidentification ADD userType TINYINT (1) DEFAULT NULL COMMENT '用户类型';

ALTER TABLE user_caidentification ADD caChannel TINYINT (2) NOT NULL COMMENT 'ca认证类型';

ALTER TABLE user_caidentification CHANGE acctType acctType tinyint(1) DEFAULT NULL COMMENT '房东类型 (0:企业版房东,1:个人版房东) 在usertype为房东时有值';


ALTER TABLE user_landlord_identity rename  user_identity;

ALTER TABLE user_identity CHANGE landlordId userId INT (11) NOT NULL COMMENT '用户ID';

ALTER TABLE user_identity ADD userType TINYINT (1) DEFAULT NULL COMMENT '用户类型';

