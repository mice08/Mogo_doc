/*  Database name `mogoroomdb`  增加房东过去30天平均蘑菇分*/
use mogoroomdb;

ALTER TABLE repo_alldetail ADD avgMogoScore INT(4) NULL COMMENT '房东过去30天平均蘑菇分';

