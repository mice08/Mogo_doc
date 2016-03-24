/*贷款请求跟综器 包含请求url,参数，返回,耗时等*/
use mogoroomdb;

DROP TABLE IF EXISTS loan_request_tracker;
CREATE TABLE loan_request_tracker(
   id INT(11) AUTO_INCREMENT COMMENT '主键id 自增长',
   channel VARCHAR(50)  NOT NULL COMMENT '资方名称',
   url VARCHAR(100) NOT NULL COMMENT '第三方接口地址',
   requestContent VARCHAR(2048) NULL  COMMENT '请求参数',
   responseContent VARCHAR(2048) NULL COMMENT '请求返回(已经解密或处理后的或者接口调用失败信息)',
   bizKey VARCHAR(100) COMMENT '业务相关串',
   costTime BIGINT(20) DEFAULT 0  COMMENT '接口调用耗时ms',
   comments VARCHAR(255) COMMENT '接口方法描述',
   createTime  DATETIME  COMMENT '创建时间',
   PRIMARY KEY (id)
 ) ENGINE = INNODB COMMENT='贷款请求跟综器';