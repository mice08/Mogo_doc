/* Database name `mogoroomdb`, 房东每月蘑菇分表 */
USE mogoroomdb;

ALTER TABLE supp_repair ADD refuseDec VARCHAR(100) DEFAULT NULL COMMENT '拒绝原因';
ALTER TABLE supp_repair ADD refuseTime DATETIME DEFAULT NULL COMMENT '拒绝时间';
ALTER TABLE supp_repair ADD refuseBy INT(15) DEFAULT NULL COMMENT '拒绝人';
ALTER TABLE supp_repair ADD pretreatmentTime DATETIME DEFAULT NULL COMMENT '预处理时间';
