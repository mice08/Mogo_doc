/* Database name `mogoroomdb`, 增加报修表字段 */
USE mogoroomdb;

ALTER TABLE supp_repair ADD refuseDesc VARCHAR(100) DEFAULT NULL COMMENT '拒绝原因';
ALTER TABLE supp_repair ADD refuseTime DATETIME DEFAULT NULL COMMENT '拒绝时间';
ALTER TABLE supp_repair ADD refuseBy INT(15) DEFAULT NULL COMMENT '拒绝人';
ALTER TABLE supp_repair ADD refuseByType INT(2) DEFAULT NULL COMMENT '拒绝人类型（参考字典表组名:userType）';
ALTER TABLE supp_repair ADD pretreatmentTime DATETIME DEFAULT NULL COMMENT '预处理时间';


ALTER TABLE supp_repair_his ADD refuseDesc VARCHAR(100) DEFAULT NULL COMMENT '拒绝原因';
ALTER TABLE supp_repair_his ADD refuseTime DATETIME DEFAULT NULL COMMENT '拒绝时间';
ALTER TABLE supp_repair_his ADD refuseBy INT(15) DEFAULT NULL COMMENT '拒绝人';
ALTER TABLE supp_repair_his ADD refuseByType INT(2) DEFAULT NULL COMMENT '拒绝人类型（参考字典表组名:userType）';
ALTER TABLE supp_repair_his ADD pretreatmentTime DATETIME DEFAULT NULL COMMENT '预处理时间';