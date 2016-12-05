/* 修改user_info/user_info_his表，添加个人工作信息 */
use mogoroomdb;

ALTER TABLE user_info ADD COLUMN company varchar(50) DEFAULT NULL COMMENT '单位名称';

ALTER TABLE user_info ADD COLUMN companyAddress varchar(200) DEFAULT NULL COMMENT '单位详细地址';

ALTER TABLE user_info ADD COLUMN occupation int(11) DEFAULT NULL COMMENT '所属行业';

ALTER TABLE user_info ADD COLUMN companyTel varchar(50) DEFAULT NULL COMMENT '公司电话';

ALTER TABLE user_info ADD COLUMN position int(11) DEFAULT NULL COMMENT '所属职位';


ALTER TABLE user_info_his ADD COLUMN company varchar(50) DEFAULT NULL COMMENT '单位名称';

ALTER TABLE user_info_his ADD COLUMN companyAddress varchar(200) DEFAULT NULL COMMENT '单位详细地址';

ALTER TABLE user_info_his ADD COLUMN occupation int(11) DEFAULT NULL COMMENT '所属行业';

ALTER TABLE user_info_his ADD COLUMN companyTel varchar(50) DEFAULT NULL COMMENT '公司电话';

ALTER TABLE user_info_his ADD COLUMN position int(11) DEFAULT NULL COMMENT '所属职位';