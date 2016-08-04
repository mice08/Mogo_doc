/* Database name `mogoroomdb` , 品牌表增加喜欢次数字段 */
USE mogoroomdb;
ALTER TABLE brand ADD COLUMN praiseNum INT(11) DEFAULT NULL COMMENT '品牌喜欢数(点赞数)';