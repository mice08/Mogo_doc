use mogoroomdb;

/*增加城市开关相关字段*/
ALTER TABLE city ADD COLUMN isWebsite tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否官网(除租客app)上线(0:否 1:是)' AFTER isApp;
ALTER TABLE city ADD COLUMN isFlatsInput tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否开放房源录入(0:否 1:是)' AFTER isWebsite;