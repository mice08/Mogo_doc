/*repo_alldetail表添加字段，房东蘑菇分*/

use mogoroomdb;

ALTER TABLE repo_alldetail ADD COLUMN mogoScore INT(4) COMMENT '房东蘑菇分';