use mogoroomdb;

/* 添加是否有效字段 */
ALTER TABLE city_business_area ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE city ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE city_subway_station ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE city_country ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE city_station ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE city_subway ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE user_answer ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE user_sharerenter ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE user_terminal_loginlog ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE user_account_mapping ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE user_employee_info_his ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE user_employee_info ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE user_favorite ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE user_landlord_billdtltype ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE user_landlord_info_his ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE user_landlord_info ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE user_loginlog ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE user_user_memo ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE user_password_log ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE user_password ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE user_renter_info_his ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE user_renter_info ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE user_weixin_info ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE user_verify_info ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

ALTER TABLE user_wateraccount ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';

