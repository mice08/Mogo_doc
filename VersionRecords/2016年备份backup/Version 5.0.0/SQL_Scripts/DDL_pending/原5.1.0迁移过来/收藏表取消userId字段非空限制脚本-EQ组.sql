/* Database name `mogoroomdb` , 用户收藏(品牌喜欢)记录表修改userId默认为空(修改非空限制) */
USE mogoroomdb;
ALTER TABLE user_favorite MODIFY userId INT(11) NULL COMMENT '用户ID';